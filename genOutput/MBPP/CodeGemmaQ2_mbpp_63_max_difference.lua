-- Write a function to find the maximum difference between available pairs in the given table table.
local function max_difference(test_list)
local max_diff = wald suspicis suspic suspic suspicis suspicis

lu = require('luaunit')

function test_humaneval()
local candidate = max_difference
    lu.assertEquals(candidate({{3, 5}, {1, 7}, {10, 3}, {1, 2}}), 7)
    lu.assertEquals(candidate({{4, 6}, {2, 17}, {9, 13}, {11, 12}}), 15)
    lu.assertEquals(candidate({{12, 35}, {21, 27}, {13, 23}, {41, 22}}), 23)
end

os.exit(lu.LuaUnit.run())