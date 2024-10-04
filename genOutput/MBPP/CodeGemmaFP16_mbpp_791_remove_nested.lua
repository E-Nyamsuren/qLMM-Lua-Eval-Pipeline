-- Write a function to remove tables from the given table.
local function remove_nested(test_tup)
    local test_tup_copy = test_tup:copy()
    local test_tup_copy_len = #test_tup_copy
    local test_tup_copy_i = 1
    while test_tup_copy_i <= test_tup_copy_len do
        local test_tup_copy_val = test_tup_copy[test_tup_copy_i]
        if type(test_tup_copy_val) == "table" then
            test_tup_copy[test_tup_copy_i] = remove_nested(test_tup_copy_val)
        end
        test_tup_copy_i = test_tup_copy_i + 1
    end
    return test_tup_copy
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_nested
    lu.assertEquals(candidate({1, 5, 7, {4, 6}, 10}), {1, 5, 7, 10})
    lu.assertEquals(candidate({2, 6, 8, {5, 7}, 11}), {2, 6, 8, 11})
    lu.assertEquals(candidate({3, 7, 9, {6, 8}, 12}), {3, 7, 9, 12})
    lu.assertEquals(candidate({3, 7, 9, {6, 8}, {5, 12}, 12}), {3, 7, 9, 12})
end

os.exit(lu.LuaUnit.run())