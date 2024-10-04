# [SC] Before running this script ensure that
# -- Lua 3.5 or higher is installed
# -- Path to Lua is added to the environmental variable
# -- the LuaUnit package is installed
# -- install the CLOC tool to count lines of code (winget install AlDanial.Cloc): https://github.com/AlDanial/cloc?tab=readme-ov-file

import os
from dotenv import load_dotenv, dotenv_values
from pathlib import Path
import json
import re
import subprocess

load_dotenv()

# [SC] import the config json file
config = json.load(open(Path(os.getenv("CONFIG_FILE"))))
models = config["models"]
benchmarks = config["benchmarks"]

# [SC] all generated output are stored in this folder
gen_output_path = Path(os.getenv("GEN_OUTPUT_PATH"))

# [SC] all evaluation output will be stored in this folder
eval_output_path = Path(os.getenv("EVAL_OUTPUT_PATH"))

# [SC] call this function to start evaluation
def doEval():
    timeoutLimit = int(os.getenv("SUBPROCESS_TIME_OUT"))

    # [SC] this is the csv filename that will be used to store evaluation summary
    index = 1
    esFilepath = eval_output_path / f"{os.getenv('EVAL_SUMMARY_FILE')}_{index}.csv"
    while esFilepath.is_file():
        index += 1
        esFilepath = eval_output_path / f"{os.getenv('EVAL_SUMMARY_FILE')}_{index}.csv"

    # [SC] this is the csv filename that will be used to store line of code count
    index = 1
    locFilepath = eval_output_path / f"{os.getenv('EVAL_LOC_FILE')}_{index}.csv"
    while locFilepath.is_file():
        index += 1
        locFilepath = eval_output_path / f"{os.getenv('EVAL_LOC_FILE')}_{index}.csv"

    locFileContent = "bench,model,bench_item,loc\n"

    # [SC] writing to the summary file in a streaming mode
    with open(esFilepath, 'wb', buffering=0) as esFile:
        # [SC] write column names to the RT datafile
        esFile.write(b"bench,mFamily,model,qbits,bench_item,pass,ft,rte,se,te,oe\n")

        for bm in benchmarks:
            benchDir = gen_output_path / bm["name"]

            # [SC] skip the benchmark since no data folder is available for this benchmark
            if not benchDir.is_dir():
                print(f"==== SKIPPED '{bm['name']}' benchmark. Data folder is missing.")
                continue
            print(f"==== Evaluating benchmark '{bm['name']}' at {benchDir}.")

            # [SC] create a folder where evaluation output of each question of this benchmark will be stored
            outDir = eval_output_path / bm["name"]
            outDir.mkdir(parents=True, exist_ok=True)
            print(f"==== ==== Created '{outDir}' folder to store evaluation output.")

            # [SC] this regex is for checking the correctness of the filenames
            regP = fr"(?P<modelName>[^_]+)_(?P<question>.+)\.lua"
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
                modelName = reMatch.group(1)
                questName = reMatch.group(2)

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
                    result = subprocess.run(["lua", luaFile], capture_output=True, text=True, timeout=timeoutLimit)

                    if "1 success, 0 failures" in result.stdout and result.stderr == "":
                        print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' passed the tests.")
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
                        print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' FAILED. " \
                              f"FT: {failedTest}, RTE: {runtimeError}, SE: {syntaxError}")

                    evalOutputMsg += f"==== ==== STDOUT:\n{result.stdout}\n\n==== ====STDERR:\n{result.stderr}"
                except subprocess.TimeoutExpired:
                    passF = 0
                    timeoutError = 1
                    print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' FAILED. " \
                          f"Timeout: Did not finish within {timeoutLimit} seconds.")
                    evalOutputMsg += "TIMEOUT"
                except subprocess.CalledProcessError as e:
                    passF = 0
                    otherError = 1
                    print(f"==== ==== ==== Model: '{modelName}', question: '{questName}' FAILED. " \
                          f"SUBPROCESS ERROR: {e}")
                    evalOutputMsg += f"SUBPROCESS ERROR: {e}"

                # [SC] write the evaluation summary into the csv file
                outputStr = f"{bm['name']},{mFamily},{modelName},{qBits},{questName},{passF}" \
                            f",{failedTest},{runtimeError},{syntaxError},{timeoutError},{otherError}\n"
                esFile.write(bytes(outputStr, "utf-8"))

                # [SC] store the evaluation output into a file
                with open(outDir / f"{luaFile.stem}.txt", 'w') as f:
                    f.write(evalOutputMsg)

            # [SC] from here start the code to count lines of code
            benchRawDir = gen_output_path / f"{bm['name']}_raw"

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
                    modelName = reMatch.group(1)
                    questName = reMatch.group(2)

                    locFileContent += f"{bm['name']},{modelName},{questName},{jsonR[key]['code']}\n"
            except:
                pass

    # [SC] save LOC data
    with open(locFilepath, "w") as locFile:
        locFile.write(locFileContent)

doEval()