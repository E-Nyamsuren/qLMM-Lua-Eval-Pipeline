-- Write a function to find the specified number of largest products from two given tables, selecting one factor from each table.
local function large_product(nums1, nums2, N)
    -- Sort the tables
    table.sort(nums1)
    table.sort(nums2)

lu = require('luaunit')

function test_humaneval()
local candidate = large_product
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 3), {60, 54, 50})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 4), {60, 54, 50, 48})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 5), {60, 54, 50, 48, 45})
end

os.exit(lu.LuaUnit.run())