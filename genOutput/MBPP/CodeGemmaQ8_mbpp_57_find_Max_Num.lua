-- Write a luathon function to find the largest number that can be formed with the given table of digits.
local function find_Max_Num(arr)
    local max_num = 0
    local max_num_arr = {}
    local max_num_arr_len = 0
    local max_num_arr_len_max = 0
    local max_num_arr_len_max_index = 0
    local max_num_arr_len_max_index_arr = {}
    local max_num_arr_len_max_index_arr_len = 0
    local max_num_arr_len_max_index_arr_len_max = 0
    local max_num_arr_len_max_index_arr_len_max_index = 0
    local max_num_arr_len_max_index_arr_len_max_index_arr = {}
    local max_num_arr_len_max_index_arr_len_max_index_arr_len = 0
    local max_num_arr_len_max_index_arr_len_max_index_arr_len_max = 0
    local max_num_arr_len_max_index_arr_len_max_index_arr_len_max_index = 0
    local max_num_arr_len_max_index_arr_len_max_index_arr_len_max_index_arr = {}
    local max_num_arr_len_max_index_arr_len_max_index_arr_len_max_index_arr_len = 0
    local max_num_arr_len_max_index_arr_len_max_index_arr_len_max_index_arr_len_max = 0
    local max_num_arr_len_max_index_arr_len_max_index_arr_len_max_index_arr_len_max_index = 0
    local max_num_arr_len_max_index_arr_len_max_index_arr_len_max_index_arr_len_max_index_arr = {}
    local max_num_arr_len_max_index_

lu = require('luaunit')

function test_humaneval()
local candidate = find_Max_Num
    lu.assertEquals(candidate({1, 2, 3}), 321)
    lu.assertEquals(candidate({4, 5, 6, 1}), 6541)
    lu.assertEquals(candidate({1, 2, 3, 9}), 9321)
end

os.exit(lu.LuaUnit.run())