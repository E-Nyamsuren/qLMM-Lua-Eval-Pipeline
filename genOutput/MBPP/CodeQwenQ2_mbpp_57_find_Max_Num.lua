-- Write a luathon function to find the largest number that can be formed with the given table of digits.
local function find_Max_Num(arr)
    -- Initialize the max_num variable to 0
    local max_num = 0
    -- Initialize the max_num_str variable to ""
    local max_num_str = ""
    -- Initialize the max_num_str_len variable to 0
    local max_num_str_len = 0
    -- Initialize the max_num_str_len_temp variable to 0
    local max_num_str_len_temp = 0
    -- Initialize the max_num_str_len_temp_str variable to ""
    local max_num_str_len_temp_str = ""
    -- Initialize the max_num_str_len_temp_str_len variable to 0
    local max_num_str_len_temp_str_len = 0
    -- Initialize the max_num_str_len_temp_str_len_temp variable to 0
    local max_num_str_len_temp_str_len_temp = 0
    -- Initialize the max_num_str_len_temp_str_len_temp_str variable to ""
    local max_num_str_len_temp_str_len_temp_str = ""
    -- Initialize the max_num_str_len_temp_str_len_temp_str_len variable to 0
    local max_num_str_len_temp_str_len_temp_str_len = 0
    -- Initialize the max_num_str_len_temp_str_len_temp_str_len_temp variable to 0
    local max_num_str_len_temp_str_len_temp_str_len_temp = 0
    -- Initialize the max_num_str_len_temp_str_len_temp_str_len_temp_str variable to ""
    local max_num_str_len_temp_str_len_temp_str_len_temp_str = ""
    -- Initialize the max_num_str_len_temp_str_len_temp_str_

lu = require('luaunit')

function test_humaneval()
local candidate = find_Max_Num
    lu.assertEquals(candidate({1, 2, 3}), 321)
    lu.assertEquals(candidate({4, 5, 6, 1}), 6541)
    lu.assertEquals(candidate({1, 2, 3, 9}), 9321)
end

os.exit(lu.LuaUnit.run())