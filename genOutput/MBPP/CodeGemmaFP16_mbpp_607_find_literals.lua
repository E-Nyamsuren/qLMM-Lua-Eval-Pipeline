-- Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.
local function find_literals(text, pattern)
    local start_index = 0
    local end_index = 0
    local match_count = 0
    local match_start_index = 0
    local match_end_index = 0
    local match_start_index_list = {}
    local match_end_index_list = {}
    local match_list = {}
    local match_start_index_list_final = {}
    local match_end_index_list_final = {}
    local match_list_final = {}
    local match_start_index_list_final_final = {}
    local match_end_index_list_final_final = {}
    local match_list_final_final = {}
    local match_start_index_list_final_final_final = {}
    local match_end_index_list_final_final_final = {}
    local match_list_final_final_final = {}
    local match_start_index_list_final_final_final_final = {}
    local match_end_index_list_final_final_final_final = {}
    local match_list_final_final_final_final = {}
    local match_start_index_list_final_final_final_final_final = {}
    local match_end_index_list_final_final_final_final_final = {}
    local match_list_final_final_final_final_final = {}
    local match_start_index_list_final_final_final_final_final_final = {}
    local match_end_index_list_final_final_final_final_final_final = {}
    local match_list_final_final_final_final_final_final_final = {}
    local match_start_index_list_final_final_final_final_final_final_final = {}
    local match_end_index_list_final_final_final_final_final_final_final = {}
    local match_list_final_final_final_final_final_

lu = require('luaunit')

function test_humaneval()
local candidate = find_literals
    lu.assertEquals(candidate('The quick brown fox jumps over the lazy dog.', 'fox'), {'fox', 16, 19})
    lu.assertEquals(candidate('Its been a very crazy procedure right', 'crazy'), {'crazy', 16, 21})
    lu.assertEquals(candidate('Hardest choices required strongest will', 'will'), {'will', 35, 39})
end

os.exit(lu.LuaUnit.run())