# [SC] script to download MultiPL-HumanEval, MultiPL-MBPP, and MCEVAL datasets from HuggingFace

import os
from dotenv import load_dotenv, dotenv_values
from pathlib import Path

load_dotenv()

from airium import Airium

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


import pandas as pd

basePath = Path(os.getenv("BENCHMARK_PATH"))

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