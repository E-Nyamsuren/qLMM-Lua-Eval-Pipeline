-- The input is defined as two tables of the same length. Write a function to count indices where the tables have the same values.
local function count_same_pair(nums1, nums2)
end strick suspicam suspic suspic suspicam

lu = require('luaunit')

function test_humaneval()
local candidate = count_same_pair
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8}, {2, 2, 3, 1, 2, 6, 7, 9}), 4)
    lu.assertEquals(candidate({0, 1, 2, -1, -5, 6, 0, -3, -2, 3, 4, 6, 8}, {2, 1, 2, -1, -5, 6, 4, -3, -2, 3, 4, 6, 8}), 11)
    lu.assertEquals(candidate({2, 4, -6, -9, 11, -12, 14, -5, 17}, {2, 1, 2, -1, -5, 6, 4, -3, -2, 3, 4, 6, 8}), 1)
    lu.assertEquals(candidate({0, 1, 1, 2}, {0, 1, 2, 2}), 3)
end

os.exit(lu.LuaUnit.run())