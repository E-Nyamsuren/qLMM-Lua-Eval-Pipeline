# [SC] Before running this script ensure that
# -- Lua 3.5 or higher is installed
# -- Path to Lua is added to the environmental variable
# -- the LuaUnit package is installed
# -- install the CLOC tool to count lines of code (winget install AlDanial.Cloc): https://github.com/AlDanial/cloc?tab=readme-ov-file
# --
# -- the environmental variable PY_INTERPRETER is set with the path to the Python interpreter

import os
from dotenv import load_dotenv, dotenv_values
from pathlib import Path
import json
import re
import subprocess
import py_compile

load_dotenv()

# [SC] import the config json file
config = json.load(open(Path(os.getenv("CONFIG_FILE"))))
models = config["models"]
luabenchmarks = config["luabenchmarks"]
pybenchmarks = config["pybenchmarks"]


# [SC] all generated output are stored in this folder
gen_output_path = Path(os.getenv("GEN_OUTPUT_PATH"))

# [SC] all evaluation output will be stored in this folder
eval_output_path = Path(os.getenv("EVAL_OUTPUT_PATH"))


TIMELIMIT = int(os.getenv("SUBPROCESS_TIME_OUT"))

PYINTER = Path(os.getenv("PY_INTERPRETER"))


# [SC] call this function to start Lua code evaluation
def doLuaEval(passKP=None, evalLocP=True):
    # [SC] this is the csv filename that will be used to store evaluation summary
    index = 1
    esFilepath = eval_output_path / f"{os.getenv('LUA_EVAL_SUMMARY_FILE')}_{index}.csv"
    while esFilepath.is_file():
        index += 1
        esFilepath = eval_output_path / f"{os.getenv('LUA_EVAL_SUMMARY_FILE')}_{index}.csv"

    # [SC] this is the csv filename that will be used to store line of code count
    index = 1
    locFilepath = eval_output_path / f"{os.getenv('LUA_EVAL_LOC_FILE')}_{index}.csv"
    while locFilepath.is_file():
        index += 1
        locFilepath = eval_output_path / f"{os.getenv('LUA_EVAL_LOC_FILE')}_{index}.csv"

    locFileContent = "bench,model,bench_item,loc,pass_k,pass_i\n"

    # [SC] writing to the summary file in a streaming mode
    with open(esFilepath, 'wb', buffering=0) as esFile:
        # [SC] write column names to the RT datafile
        esFile.write(b"bench,mFamily,model,qbits,bench_item,pass,ft,rte,se,te,oe,pass_k,pass_i\n")

        for bm in luabenchmarks:
            benchDir = gen_output_path / bm["name"] / os.getenv('LUA_FOLDER')

            # [SC] skip the benchmark since no data folder is available for this benchmark
            if not benchDir.is_dir():
                print(f"==== SKIPPED '{bm['name']}' benchmark. Data folder is missing.")
                continue
            print(f"==== Evaluating benchmark '{bm['name']}' at {benchDir}.")

            # [SC] create a folder where evaluation output of each question of this benchmark will be stored
            outDir = eval_output_path / bm["name"] / os.getenv('LUA_FOLDER')
            outDir.mkdir(parents=True, exist_ok=True)
            print(f"==== ==== Created '{outDir}' folder to store evaluation output.")

            # [SC] this regex is for checking the correctness of the filenames
            regP = fr"(?P<modelName>[^_]+)_(?P<passi>\d+)Of(?P<passk>\d+)_(?P<question>.+)\.lua"
            pattern = re.compile(regP)

            for luaFile in benchDir.iterdir():
                # [SC] ensure it is a file
                if not luaFile.is_file():
                    continue

                # [SC] ensure the filename has the expected structure, skip otherwise
                # [SC] extract the model and question names from the filename
                reMatch = pattern.match(luaFile.name)
                if not reMatch:
                    print(f"==== ==== ==== SKIPPED '{luaFile.name}'. Unknown filename that does not match regular expression {regP}.")
                    continue

                modelName = reMatch.group("modelName")
                pass_i = reMatch.group("passi")
                pass_k = reMatch.group("passk")
                questName = reMatch.group("question")

                # [SC] skip the file if it is not from the expected pass_k test
                if passKP != None and int(passKP) != int(pass_k):
                    print(f"==== ==== ==== SKIPPED '{luaFile.name}'. Expected pass@k={passKP}. Got pass@k={pass_k}.")
                    continue

                # [SC] get model quantization bits and family
                qBits = ""
                mFamily = ""
                for modelProfile in models:
                    if modelProfile["name"] == modelName:
                        qBits = modelProfile["qBits"]
                        mFamily = modelProfile["family"]
                        break

                passF = 1
                failedTest = 0
                runtimeError = 0
                syntaxError = 0
                timeoutError = 0
                otherError = 0
                evalOutputMsg = ""

                try:
                    # Run the Lua script using the Lua interpreter
                    result = subprocess.run(["lua", luaFile], capture_output=True, text=True, timeout=TIMELIMIT, encoding='oem')

                    if "1 success, 0 failures" in result.stdout and result.stderr == "":
                        print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' passed the tests at attempt {pass_i} of pass@{pass_k}.")
                    else:
                        passF = 0
                        # [SC] a failed unit test
                        if "Failed tests" in result.stdout:
                            failedTest = 1
                        # [SC] a runtime error
                        if "Tests with errors" in result.stdout:
                            runtimeError = 1
                        # [SC] a syntax error
                        if result.stderr:
                            syntaxError = 1
                        print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' FAILED at attempt {pass_i} of pass@{pass_k}. " \
                              f"FT: {failedTest}, RTE: {runtimeError}, SE: {syntaxError}")

                    evalOutputMsg += f"==== ==== STDOUT:\n{result.stdout}\n\n==== ====STDERR:\n{result.stderr}"
                except subprocess.TimeoutExpired:
                    passF = 0
                    timeoutError = 1
                    print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' FAILED at attempt {pass_i} of pass@{pass_k}. " \
                          f"Timeout: Did not finish within {TIMELIMIT} seconds.")
                    evalOutputMsg += "TIMEOUT"
                except subprocess.CalledProcessError as e:
                    passF = 0
                    otherError = 1
                    print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' FAILED at attempt {pass_i} of pass@{pass_k}. " \
                          f"SUBPROCESS ERROR: {e}")
                    evalOutputMsg += f"SUBPROCESS ERROR: {e}"

                # [SC] write the evaluation summary into the csv file
                outputStr = f"{bm['name']},{mFamily},{modelName},{qBits},{questName},{passF}" \
                            f",{failedTest},{runtimeError},{syntaxError},{timeoutError},{otherError},{pass_k},{pass_i}\n"
                esFile.write(bytes(outputStr, "utf-8"))

                # [SC] store the evaluation output into a file
                with open(outDir / f"{luaFile.stem}.txt", 'w') as f:
                    f.write(evalOutputMsg)

            if evalLocP:
                # [SC] from here start the code to count lines of code
                benchRawDir = gen_output_path / f"{bm['name']}_raw" / os.getenv('LUA_FOLDER')

                if not benchRawDir.is_dir():
                    print(f"==== SKIPPED '{bm['name']}' benchmark for extacting lines of code. Data folder is missing.")
                    continue

                # [SC] count lines of code generated in each task
                try:
                    # [SC] count LOC using the CLOC tool in all Lua files
                    result = subprocess.run(["cloc", benchRawDir, "--json", "--quiet", "--by-file", "--skip-uniqueness"]
                                            , capture_output=True, text=True)
                    jsonR = json.loads(result.stdout)

                    for key in jsonR:
                        if not os.path.isfile(key):
                            continue

                        reMatch = pattern.match(Path(key).name)
                        if not reMatch:
                            print(f"==== ==== ==== SKIPPED '{Path(key).name}'. " \
                                  f"Unknown filename that does not match regular expression {regP}.")
                            continue

                        modelName = reMatch.group("modelName")
                        pass_i = reMatch.group("passi")
                        pass_k = reMatch.group("passk")
                        questName = reMatch.group("question")

                        locFileContent += f"{bm['name']},{modelName},{questName},{jsonR[key]['code']},{pass_k},{pass_i}\n"
                except:
                    pass

    # [SC] save LOC data
    if evalLocP:
        with open(locFilepath, "w") as locFile:
            locFile.write(locFileContent)


# [SC] call this function to start Python code evaluation
def doPyEval(passKP=None):
    # [SC] this is the csv filename that will be used to store evaluation summary
    index = 1
    esFilepath = eval_output_path / f"{os.getenv('PY_EVAL_SUMMARY_FILE')}_{index}.csv"
    while esFilepath.is_file():
        index += 1
        esFilepath = eval_output_path / f"{os.getenv('PY_EVAL_SUMMARY_FILE')}_{index}.csv"

    # [SC] writing to the summary file in a streaming mode
    with open(esFilepath, 'wb', buffering=0) as esFile:
        # [SC] write column names to the RT datafile
        esFile.write(b"bench,mFamily,model,qbits,bench_item,pass,ft,rte,se,te,oe,pass_k,pass_i\n")

        for bm in pybenchmarks:
            benchDir = gen_output_path / bm["name"] / os.getenv('PY_FOLDER')

            # [SC] skip the benchmark since no data folder is available for this benchmark
            if not benchDir.is_dir():
                print(f"==== SKIPPED '{bm['name']}' Python benchmark. Data folder is missing.")
                continue
            print(f"==== Evaluating Python benchmark '{bm['name']}' at {benchDir}.")

            # [SC] create a folder where evaluation output of each question of this benchmark will be stored
            outDir = eval_output_path / bm["name"] / os.getenv('PY_FOLDER')
            outDir.mkdir(parents=True, exist_ok=True)
            print(f"==== ==== Created '{outDir}' folder to store evaluation output.")

            # [SC] this regex is for checking the correctness of the filenames
            regP = fr"(?P<modelName>[^_]+)_(?P<passi>\d+)Of(?P<passk>\d+)_(?P<question>.+)\.py"
            pattern = re.compile(regP)

            for pyFile in benchDir.iterdir():
                # [SC] ensure it is a file
                if not pyFile.is_file():
                    continue

                # [SC] ensure the filename has the expected structure, skip otherwise
                # [SC] extract the model and question names from the filename
                reMatch = pattern.match(pyFile.name)
                if not reMatch:
                    print(f"==== ==== ==== SKIPPED '{pyFile.name}'. Unknown filename that does not match regular expression {regP}.")
                    continue

                modelName = reMatch.group("modelName")
                pass_i = reMatch.group("passi")
                pass_k = reMatch.group("passk")
                questName = reMatch.group("question")

                # [SC] skip the file if it is not from the expected pass_k test
                if passKP != None and int(passKP) != int(pass_k):
                    print(f"==== ==== ==== SKIPPED '{pyFile.name}'. Expected pass@k={passKP}. Got pass@k={pass_k}.")
                    continue

                print(f"==== ==== ==== EVALUATING '{pyFile.name}'.")

                # [SC] get model quantization bits and family
                qBits = ""
                mFamily = ""
                for modelProfile in models:
                    if modelProfile["name"] == modelName:
                        qBits = modelProfile["qBits"]
                        mFamily = modelProfile["family"]
                        break

                passF = 1
                failedTest = 0
                runtimeError = 0
                syntaxError = 0
                timeoutError = 0
                otherError = 0
                evalOutputMsg = ""

                try:
                    # [SC] check for syntax errors before executing the code
                    result = subprocess.run([PYINTER, "-m", "py_compile", pyFile], capture_output=True
                                            , text=True, timeout=TIMELIMIT, encoding='oem')
                    # [SC] a syntax error
                    if result.stderr:
                        passF = 0
                        syntaxError = 1
                        evalOutputMsg += f"==== ==== STDOUT:\n{result.stdout}\n\n==== ====STDERR:\n{result.stderr}"
                    else:
                        result = subprocess.run([PYINTER, pyFile], capture_output=True,
                                                text=True, timeout=TIMELIMIT)
                        if result.stderr == "":
                            print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' passed the tests at attempt {pass_i} of pass@{pass_k}.")
                        # [SC] a failed unit test
                        elif "AssertionError" in result.stderr:
                            passF = 0
                            failedTest = 1
                        # [SC] a runtime error
                        else:
                            passF = 0
                            runtimeError = 1
                        evalOutputMsg += f"==== ==== STDOUT:\n{result.stdout}\n\n==== ====STDERR:\n{result.stderr}"

                    if failedTest or runtimeError or syntaxError:
                        print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' FAILED at attempt {pass_i} of pass@{pass_k}. " \
                              f"FT: {failedTest}, RTE: {runtimeError}, SE: {syntaxError}")
                except subprocess.TimeoutExpired:
                    passF = 0
                    timeoutError = 1
                    print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' FAILED at attempt {pass_i} of pass@{pass_k}. " \
                          f"Timeout: Did not finish within {TIMELIMIT} seconds.")
                    evalOutputMsg += "TIMEOUT"
                except subprocess.CalledProcessError as e:
                    passF = 0
                    otherError = 1
                    print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' FAILED at attempt {pass_i} of pass@{pass_k}. " \
                          f"SUBPROCESS ERROR: {e}")
                    evalOutputMsg += f"SUBPROCESS ERROR: {e}"

                # [SC] write the evaluation summary into the csv file
                outputStr = f"{bm['name']},{mFamily},{modelName},{qBits},{questName},{passF}" \
                            f",{failedTest},{runtimeError},{syntaxError},{timeoutError},{otherError},{pass_k},{pass_i}\n"
                esFile.write(bytes(outputStr, "utf-8"))

                # [SC] store the evaluation output into a file
                with open(outDir / f"{pyFile.stem}.txt", 'w', encoding="utf-8") as f:
                    f.write(evalOutputMsg)


# [SC] pass@1 evaluation
doLuaEval(passKP=1, evalLocP=True)
doPyEval(passKP=1)

# [SC] pass@10 evaluation
doLuaEval(passKP=10, evalLocP=False)
doPyEval(passKP=10)