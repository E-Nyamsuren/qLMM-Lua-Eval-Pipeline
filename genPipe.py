# [SC] run this script to apply the benchmarks on the code LLMs
# [SC] Before running this script ensure that
# -- the LLMs specified in config.json are locally available at the directory indicated by the MODEL_REP_PATH variable inside .env
# -- MultiPL-HumanEval, MultiPL-MBPP, and MCEVAL benchmarks are locally available, if not run the hfDatasetDownloader.py script

import os
from dotenv import load_dotenv, dotenv_values
from pathlib import Path
import json

load_dotenv()

# [SC] import the config json file
config = json.load(open(Path(os.getenv("CONFIG_FILE"))))


from llama_cpp import Llama
import pandas as pd
import time
import random


# [SC] this is the root directory where the models are locally stored
model_rep_path = Path(os.getenv("MODEL_REP_PATH"))
# [SC] models to be used for code generation
# [SC] ensure the models are locally available at the directory 'model_rep_path' + [model id]
models = config["models"]

# [SC] this is the root directory where the models are locally stored
bench_path = Path(os.getenv("BENCHMARK_PATH"))
# [SC] Lua code generation benchmarks
luabenchmarks = config["luabenchmarks"]
# [SC] Python code generation benchmarks
pybenchmarks = config["pybenchmarks"]

# [SC] all generated output will be stored in this folder
gen_output_path = Path(os.getenv("GEN_OUTPUT_PATH"))

# [SC] Do model's code generation using the benchmarks
def doLuaGeneration():
    # [SC] this is the csv filename that will be used to store response time (RT) data
    index = 1
    rtFilepath = gen_output_path / f"{os.getenv('LUA_RESPONSE_FILE')}_{index}.csv"
    while rtFilepath.is_file():
        index += 1
        rtFilepath = gen_output_path / f"{os.getenv('LUA_RESPONSE_FILE')}_{index}.csv"

    # [SC] writing to the datafile in a streaming mode
    with open(rtFilepath, 'wb', buffering=0) as rtFile:
        # [SC] write column names to the RT datafile
        rtFile.write(b"bench,model,bench_item,rt,pass_k,pass_i\n")

        # [SC] iterate though the benchmarks
        for bm in luabenchmarks:
            # [SC] check if the benchmark should be skipped
            if bm['skip']:
                print(f"==== SKIPPING the benchmark '{bm['name']} according to the config param.")
                continue

            # [SC] load the benchmark
            benchDf = pd.read_json(bench_path / bm["id"], lines=True, encoding="utf-8")
            print(f"==== Loaded '{bm['name']}' benchmark with {len(benchDf.index)} questions")

            # [SC] extract a sample from the benchmark
            try:
                sampleSize = int(bm["sample"])

                if sampleSize > 0 and sampleSize < len(benchDf.index):
                    indices = random.sample(range(len(benchDf.index)), sampleSize)
                    benchDf = benchDf.iloc[indices]
                    print(f"==== ==== Sampled random {sampleSize} questions from '{bm['name']}'.")
            except:
                pass

            # [SC] create a folder where generated results with unit tests of this benchmark will be stored
            outDir = gen_output_path / bm["name"] / os.getenv('LUA_FOLDER')
            outDir.mkdir(parents=True, exist_ok=True)
            print(f"==== ==== Created '{outDir}' folder to store generated code with its unit tests.")

            # [SC] create a folder where generated results only of this benchmark will be stored
            outRawDir = gen_output_path / f"{bm['name']}_raw" / os.getenv('LUA_FOLDER')
            outRawDir.mkdir(parents=True, exist_ok=True)
            print(f"==== ==== Created '{outRawDir}' folder to store only generated code.")

            # [SC] use the models to generate the codes
            for modelProf in models:
                # [SC] check if the model should be skipped
                if modelProf['skip']:
                    print(f"==== ==== SKIPPING the model '{modelProf['id']}' according to the config param.")
                    continue

                # [SC] get the path to the locally stored model
                modelPath = model_rep_path / modelProf["id"]

                # [SC] instantiated the local model
                llm = Llama(
                    model_path=str(modelPath)
                    , verbose=False         # [SC] disable console output
                    # , n_ctx=5000          # Context length to use
                    # , n_threads=12        # Number of CPU threads to use
                    # , n_gpu_layers=0      # Number of model layers to offload to GPU
                )
                print(f"==== ==== Loaded the model '{modelProf['id']}'.")

                # [TODO] temp hack
                temp = modelProf["temp"]
                topk = modelProf["top_k"]
                if modelProf['passK'] > 1:
                    temp = 0.8
                    topk = 40

                # [SC] model params for generation
                generationKwargs = {
                    "max_tokens": modelProf["max_tokens"],  # [SC] max length of the model response
                    "stop": modelProf["lua_eos"],           # [SC] End Of Sequence stop patterns to stop the generation process
                    "echo": True,                           # Echo the prompt in the output
                    "temperature": temp,                    # [SC] low temp to facilitate reproducilibity
                    "top_k": topk                           # This is essentially greedy decoding, since the model will always return the highest-probability token. Set this value > 1 for sampling decoding
                }

                # [SC] iterate through the benchmark and generate code
                for index, genCase in benchDf.iterrows():
                    prompt = genCase["prompt"]

                    # [SC] do pass@K attempts
                    for pass_i in range(1, modelProf['passK']+1):
                        # [SC] generate code and record the response time
                        startTime = time.time()
                        res = llm(prompt, **generationKwargs) # Res is a dictionary
                        endTime = time.time()

                        ## Unpack the generated text from the LLM response dictionary and print it
                        resText = res["choices"][0]["text"]
                        print(f"==== ==== ==== Generated '{genCase['name']} at {pass_i} of pass@{modelProf['passK']}' within {endTime - startTime} seconds.")

                        # [SC] store the prompt + generated code into a file
                        luaRawFile = open(outRawDir / f"{modelProf['name']}_{pass_i}Of{modelProf['passK']}_{genCase['name']}.lua", "w", encoding="utf-8")
                        luaRawFile.write(resText)
                        luaRawFile.close()

                        # [SC] attach the unit tests to the result text
                        resText += "\n\n" + genCase["tests"]

                        # [SC] store the prompt + generated code + tests into a file
                        luaFile = open(outDir / f"{modelProf['name']}_{pass_i}Of{modelProf['passK']}_{genCase['name']}.lua", "w", encoding="utf-8")
                        luaFile.write(resText)
                        luaFile.close()

                        # [SC] write the response data
                        outputStr = f"{bm['name']},{modelProf['name']},{genCase['name']},{endTime-startTime},{modelProf['passK']},{pass_i}\n"
                        rtFile.write(bytes(outputStr, "utf-8"))


def doPyGeneration():
    # [SC] this is the csv filename that will be used to store response time (RT) data
    index = 1
    rtFilepath = gen_output_path / f"{os.getenv('PY_RESPONSE_FILE')}_{index}.csv"
    while rtFilepath.is_file():
        index += 1
        rtFilepath = gen_output_path / f"{os.getenv('PY_RESPONSE_FILE')}_{index}.csv"

    # [SC] writing to the datafile in a streaming mode
    with open(rtFilepath, 'wb', buffering=0) as rtFile:
        # [SC] write column names to the RT datafile
        rtFile.write(b"bench,model,bench_item,rt,pass_k,pass_i\n")

        # [SC] iterate though the benchmarks
        for bm in pybenchmarks:
            # [SC] check if the benchmark should be skipped
            if bm['skip']:
                print(f"==== SKIPPING the benchmark '{bm['name']} according to the config param.")
                continue

            # [SC] load the benchmark
            benchDf = pd.read_json(bench_path / bm["id"], lines=True, encoding="utf-8")
            print(f"==== Loaded '{bm['name']}' benchmark with {len(benchDf.index)} questions")

            # [SC] extract a sample from the benchmark
            try:
                sampleSize = int(bm["sample"])

                if sampleSize > 0 and sampleSize < len(benchDf.index):
                    indices = random.sample(range(len(benchDf.index)), sampleSize)
                    benchDf = benchDf.iloc[indices]
                    print(f"==== ==== Sampled random {sampleSize} questions from '{bm['name']}'.")
            except:
                pass

            # [SC] create a folder where generated results with unit tests of this benchmark will be stored
            outDir = gen_output_path / bm["name"] / os.getenv('PY_FOLDER')
            outDir.mkdir(parents=True, exist_ok=True)
            print(f"==== ==== Created '{outDir}' folder to store generated code with its unit tests.")

            # [SC] create a folder where generated results only of this benchmark will be stored
            outRawDir = gen_output_path / f"{bm['name']}_raw" / os.getenv('PY_FOLDER')
            outRawDir.mkdir(parents=True, exist_ok=True)
            print(f"==== ==== Created '{outRawDir}' folder to store only generated code.")

            # [SC] use the models to generate the codes
            for modelProf in models:
                # [SC] check if the model should be skipped
                if modelProf['skip']:
                    print(f"==== ==== SKIPPING the model '{modelProf['id']}' according to the config param.")
                    continue

                # [SC] get the path to the locally stored model
                modelPath = model_rep_path / modelProf["id"]

                # [SC] instantiated the local model
                llm = Llama(
                    model_path=str(modelPath)
                    , verbose=False         # [SC] disable console output
                    # , n_ctx=5000          # Context length to use
                    # , n_threads=12        # Number of CPU threads to use
                    # , n_gpu_layers=0      # Number of model layers to offload to GPU
                )
                print(f"==== ==== Loaded the model '{modelProf['id']}'.")

                # [TODO] temp hack
                temp = modelProf["temp"]
                topk = modelProf["top_k"]
                if modelProf['passK'] > 1:
                    temp = 0.8
                    topk = 40

                # [SC] model params for generation
                generationKwargs = {
                    "max_tokens": modelProf["max_tokens"],  # [SC] max length of the model response
                    "stop": modelProf["py_eos"],            # [SC] End Of Sequence stop patterns to stop the generation process
                    "echo": True,                           # Echo the prompt in the output
                    "temperature": temp,                    # [SC] low temp to facilitate reproducilibity
                    "top_k": topk                           # This is essentially greedy decoding, since the model will always return the highest-probability token. Set this value > 1 for sampling decoding
                }

                # [SC] iterate through the benchmark and generate code
                for index, genCase in benchDf.iterrows():
                    prompt = genCase["prompt"]

                    # [SC] do pass@K attempts
                    for pass_i in range(1, modelProf['passK']+1):
                        # [SC] generate code and record the response time
                        startTime = time.time()
                        res = llm(prompt, **generationKwargs) # Res is a dictionary
                        endTime = time.time()

                        ## Unpack the generated text from the LLM response dictionary and print it
                        resText = res["choices"][0]["text"]
                        print(f"==== ==== ==== Generated '{genCase['name']} at {pass_i} of pass@{modelProf['passK']}' within {endTime-startTime} seconds.")

                        # [SC] store the prompt + generated code into a file
                        pyRawFile = open(outRawDir / f"{modelProf['name']}_{pass_i}Of{modelProf['passK']}_{genCase['name']}.py", "w", encoding="utf-8")
                        pyRawFile.write(resText)
                        pyRawFile.close()

                        # [SC] attach the unit tests to the result text
                        resText += "\n\n" + genCase["tests"]

                        # [SC] store the prompt + generated code + tests into a file
                        pyFile = open(outDir / f"{modelProf['name']}_{pass_i}Of{modelProf['passK']}_{genCase['name']}.py", "w", encoding="utf-8")
                        pyFile.write(resText)
                        pyFile.close()

                        # [SC] write the response data
                        outputStr = f"{bm['name']},{modelProf['name']},{genCase['name']},{endTime-startTime},{modelProf['passK']},{pass_i}\n"
                        rtFile.write(bytes(outputStr, "utf-8"))


doLuaGeneration()

doPyGeneration()