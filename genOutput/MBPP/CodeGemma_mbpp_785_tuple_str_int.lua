-- Write a function to convert table string to integer table.
local function tuple_str_int(test_str)
    local test_str_table = {}
    local test_str_table_index = 1
    local test_str_table_index_2 = 1
    local test_str_table_index_3 = 1
    local test_str_table_index_4 = 1
    local test_str_table_index_5 = 1
    local test_str_table_index_6 = 1
    local test_str_table_index_7 = 1
    local test_str_table_index_8 = 1
    local test_str_table_index_9 = 1
    local test_str_table_index_10 = 1
    local test_str_table_index_11 = 1
    local test_str_table_index_12 = 1
    local test_str_table_index_13 = 1
    local test_str_table_index_14 = 1
    local test_str_table_index_15 = 1
    local test_str_table_index_16 = 1
    local test_str_table_index_17 = 1
    local test_str_table_index_18 = 1
    local test_str_table_index_19 = 1
    local test_str_table_index_20 = 1
    local test_str_table_index_21 = 1
    local test_str_table_index_22 = 1
    local test_str_table_index_23 = 1
    local test_str_table_index_24 = 1
    local test_str_table_index_25 = 1
    local test_str_table_index_26 = 1
    local test_str_table_index_27 = 1
    local test_str_table_index_28 = 1
    local test_str_table_index_29 = 1
    local test_str_table_index_30 = 1
    local test_str_

lu = require('luaunit')

function test_humaneval()
local candidate = tuple_str_int
    lu.assertEquals(candidate('(7, 8, 9)'), {7, 8, 9})
    lu.assertEquals(candidate('(1, 2, 3)'), {1, 2, 3})
    lu.assertEquals(candidate('(4, 5, 6)'), {4, 5, 6})
    lu.assertEquals(candidate('(7, 81, 19)'), {7, 81, 19})
end

os.exit(lu.LuaUnit.run())