# [SC] script to download MultiPL-HumanEval, MultiPL-MBPP, and MCEVAL datasets from HuggingFace

import os
from dotenv import load_dotenv, dotenv_values
from pathlib import Path

load_dotenv()

from airium import Airium
import pandas as pd
import re

basePath = Path(os.getenv("BENCHMARK_PATH"))

# [SC] a function to generate readable html summary of a dataset
def create_html(myDf, colNames, htmlPath, title=""):
    doc = Airium()
    doc('<!DOCTYPE html>')

    with doc.html(lang="en"):
        with doc.head():
            doc.meta(charset="utf-8")
            doc.title(_t=f"Readable version of the '{title}'")
            with doc.style():
                doc(
                    '''
                    body {
                        background-color: #000;
                        color: #fff;
                        font-size: 20px;
                    }
                    
                    .mainC {
                        background-color: black;
                        border: solid, 5px;
                        margin-top: 15px; 
                        padding-left: 20px;
                        padding-right: 20px;
                        padding-top: 10px;
                        padding-bottom: 10px;
                    }
                    
                    .section {
                        margin-bottom: 50px;
                    }
                    
                    .secLabel {
                        font-size: 30px;
                        font-weight: bold;
                    }
                    '''
                )
        with doc.body():
            for index, row in myDf.iterrows():
                with doc.div(klass="mainC"):
                    for colName in colNames:
                        with doc.div(klass="section"):
                            with doc.label(klass="secLabel"):
                                doc(colName)
                            with doc.pre():
                                doc(row[colName])

    # Casting the file to a string to extract the value
    html = str(doc)
    with open(htmlPath, 'wb') as f:
        f.write(bytes(html, encoding='utf8'))


pyStopTokens = list(("\ndef ", "\n--", "\n\n"))

# [SC] download HumanEval Python dataset
pyHeDf = pd.read_parquet("hf://datasets/openai/openai_humaneval/openai_humaneval/test-00000-of-00001.parquet")
# [SC] Make compliant with the MultiPL-E format
pyHeDf = pyHeDf.assign(name=None)
pyHeDf = pyHeDf.assign(language="python")
pyHeDf = pyHeDf.assign(tests=None)
pyHeDf = pyHeDf.assign(stop_tokens=None)
for index, evalCase in pyHeDf.iterrows():
    # [SC] add the name field
    taskId = evalCase["task_id"].replace("/", "_")
    pyHeDf.at[index, "name"] = taskId
    pyHeDf.at[index, "name"] = f"{taskId}_py"

    # [SC] add the function invoke line for testing
    testStr = f"\n{evalCase["test"]}\ncheck({evalCase["entry_point"]})"
    pyHeDf.at[index, "tests"] = testStr

    # [SC] add the stopwords
    pyHeDf.at[index, "stop_tokens"] = pyStopTokens
# [SC] locally store as a json file
pyHeDf.to_json(basePath / "python_humaneval.json", orient="records", lines=True)
# [SC] locally store as a pretty json
pyHeDf.to_json(basePath / "python_humaneval_pretty.json", orient="records", indent=2, lines=True)
# [SC] create a readable html file of the dataset
create_html(pyHeDf, ["task_id", "prompt", "canonical_solution", "test", "entry_point", "name", "tests"], basePath / "python_humaneval.html", "HumanEval - Python")

# [SC] download MBPP Python dataset
pyMbppDf = pd.read_parquet("hf://datasets/google-research-datasets/mbpp/full/prompt-00000-of-00001.parquet")
pyMbppDf = pd.concat([pyMbppDf, pd.read_parquet("hf://datasets/google-research-datasets/mbpp/full/test-00000-of-00001.parquet")], ignore_index = True)
pyMbppDf = pd.concat([pyMbppDf, pd.read_parquet("hf://datasets/google-research-datasets/mbpp/full/validation-00000-of-00001.parquet")], ignore_index = True)
pyMbppDf = pd.concat([pyMbppDf, pd.read_parquet("hf://datasets/google-research-datasets/mbpp/full/train-00000-of-00001.parquet")], ignore_index = True)
# [SC] Make compliant with the MultiPL-E format
pyMbppDf = pyMbppDf.assign(name=None)
pyMbppDf = pyMbppDf.assign(language="python")
pyMbppDf = pyMbppDf.assign(prompt=None)
pyMbppDf = pyMbppDf.assign(tests=None)
pyMbppDf = pyMbppDf.assign(stop_tokens=None)
for index, evalCase in pyMbppDf.iterrows():
    # [SC] add the name field
    pyMbppDf.at[index, "name"] = f"mbpp_py_{evalCase["task_id"]}"

    # [SC] extract current prompt text
    textStr = evalCase["text"].replace("Write a function", "Write a python function")
    textStr = textStr.replace("write a function", "write a python function")
    # [SC] extract function name
    funcName = 'myfunc'
    # [SC] hardcoded solutions for assertion statements that contain unnecessary brackets
    if evalCase["task_id"] == 769:
        funcName = "Diff"
    elif evalCase["task_id"] == 927:
        funcName = "max_height"
    else:
        funcName = re.findall(r'assert\s([^\(]+)', evalCase["test_list"][0])[0]
    # [SC] create new prompt that includes instructions as comments and a target function name
    pyMbppDf.at[index, "prompt"] = f"# {textStr}\ndef {funcName}("

    # [SC] generate a single test string that can be directly attached to the generated code
    testStr = ""
    if evalCase["test_setup_code"]:
        testStr += f"\n{evalCase["test_setup_code"]}"
    for testLineStr in evalCase["test_list"]:
        testStr += f"\n{testLineStr}"
    if evalCase["challenge_test_list"].size > 0:
        for testLineStr in evalCase["challenge_test_list"]:
            testStr += f"\n{testLineStr}"
    pyMbppDf.at[index, "tests"] = testStr

    # [SC] add the stopwords
    pyMbppDf.at[index, "stop_tokens"] = pyStopTokens
# [SC] locally store as a json file
pyMbppDf.to_json(basePath / "python_mbpp.json", orient="records", lines=True)
# [SC] locally store as a pretty json
pyMbppDf.to_json(basePath / "python_mbpp_pretty.json", orient="records", indent=2, lines=True)
# [SC] create a readable html file of the dataset
create_html(pyMbppDf, ["name", "prompt", "tests"], basePath / "python_mbpp.html", "MBPP - Python")

# [SC] download MCEVAL Python dataset
pyMcGenDf = pd.read_json("hf://datasets/Multilingual-Multimodal-NLP/McEval/generation/Python.jsonl", lines=True)
pyMcGenDf = pyMcGenDf.assign(name=None)
pyMcGenDf = pyMcGenDf.assign(tests=None)
pyMcGenDf = pyMcGenDf.assign(stop_tokens=None)
for index, evalCase in pyMcGenDf.iterrows():
    # [SC] add the name field
    taskId = evalCase["task_id"].replace("/", "_")
    pyMcGenDf.at[index, "name"] = f"mceval_{taskId}"
    # [SC] add the tests field
    pyMcGenDf.at[index, "tests"] = f"\n{evalCase["test"]}"
    # [SC] add the stopwords
    pyMcGenDf.at[index, "stop_tokens"] = pyStopTokens
# [SC] locally store as a json file
pyMcGenDf.to_json(basePath / "python_mceval.json", orient="records", lines=True)
# [SC] locally store as a pretty json
pyMcGenDf.to_json(basePath / "python_mceval_pretty.json", orient="records", indent=2, lines=True)
# [SC] create a readable html file of the dataset
create_html(pyMcGenDf, ["name", "prompt", "tests"],
            basePath / "python_mceval.html", "MCEVAL - Python - Generation")


# [SC] download MultiPL-E HumanEval Lua dataset
heDf = pd.read_parquet("hf://datasets/nuprl/MultiPL-E/humaneval-lua/test-00000-of-00001.parquet")
# [SC] locally store as a json file
heDf.to_json(basePath / "lua_humaneval.json", orient="records", lines=True)
# [SC] locally store as a pretty json
heDf.to_json(basePath / "lua_humaneval_pretty.json", orient="records", indent=2, lines=True)
# [SC] create a readable html file of the dataset
create_html(heDf, ["name", "prompt", "tests"], basePath / "lua_humaneval.html", "HumanEval - Lua")

# [SC] download MultiPL-E MBPP Lua dataset
mbppDf = pd.read_parquet("hf://datasets/nuprl/MultiPL-E/mbpp-lua/test-00000-of-00001.parquet")
# [SC] locally store as a json file
mbppDf.to_json(basePath / "lua_mbpp.json", orient="records", lines=True)
# [SC] locally store as a pretty json
mbppDf.to_json(basePath / "lua_mbpp_pretty.json", orient="records", indent=2, lines=True)
# [SC] create a readable html file of the dataset
create_html(mbppDf, ["name", "prompt", "tests"], basePath / "lua_mbpp.html", "MBPP - Lua")

# [SC] download MCEVAL Lua generation dataset
mcGenDf = pd.read_json("hf://datasets/Multilingual-Multimodal-NLP/McEval/generation/Lua.jsonl", lines=True)
# [SC] add luaunit tests
mcGenDf = mcGenDf.rename(columns={"test": "oldTest"})
mcGenDf = mcGenDf.assign(tests=None)
mcGenDf = mcGenDf.assign(name=None)
for index, evalCase in mcGenDf.iterrows():
    taskId = evalCase["task_id"].replace("/", "_")
    mcGenDf.at[index, "name"] = taskId
    with open(Path(os.getenv("MOD_TESTS_MCEVAL")) / f"{taskId}.lua") as f:
        lines = f.readlines()
        mcGenDf.at[index, "tests"] = "".join(lines)
# [SC] locally store as a json file
mcGenDf.to_json(basePath / "lua_mceval.json", orient="records", lines=True)
# [SC] locally store as a pretty json
mcGenDf.to_json(basePath / "lua_mceval_pretty.json", orient="records", indent=2, lines=True)
# [SC] create a readable html file of the dataset
create_html(mcGenDf, ["task_id", "level", "prompt", "instruction", "canonical_solution", "tests", "oldTest"],
            basePath / "lua_mceval.html", "MCEVAL - Lua - Generation")

# # [SC] download MCEVAL Lua explanation dataset
# mcExpDf = pd.read_json("hf://datasets/Multilingual-Multimodal-NLP/McEval/explanation/Lua.jsonl", lines=True)
# # [SC] locally store as a json file
# mcExpDf.to_json(basePath / "lua_mceval_exp.json", orient="records", lines=True)
# # [SC] locally store as a pretty json
# mcExpDf.to_json(basePath / "lua_mceval_exp_pretty.json", orient="records", indent=2, lines=True)
# # [SC] create a readable html file of the dataset
# create_html(mcExpDf, ["task_id", "prompt", "instruction", "canonical_solution", "test"],
#             basePath / "lua_mceval_exp.html", "MCEVAL - Lua - Explanation")

# # [SC] download MCEVAL Lua completion datasets
# for taskType in ["light", "merge", "multi", "single", "span"]:
#     mcCompDf = pd.read_json(f"hf://datasets/Multilingual-Multimodal-NLP/McEval/completion/{taskType}/Lua.jsonl", lines=True)
#     # [SC] locally store as a json file
#     mcCompDf.to_json(basePath / f"lua_mceval_comp{taskType}.json", orient="records", lines=True)
#     # [SC] locally store as a pretty json
#     mcCompDf.to_json(basePath / f"lua_mceval_comp{taskType}_pretty.json", orient="records", indent=2, lines=True)
#     # [SC] create a readable html file of the dataset
#     create_html(mcCompDf, ["task_id", "prompt", "instruction", "canonical_solution"
#                                     , "test", "prefix_code", "mask_code", "suffix_code"],
#                 basePath / f"lua_mceval_comp{taskType}.html", "MCEVAL - Lua - Completion")