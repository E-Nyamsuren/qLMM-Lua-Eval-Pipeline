-- Write a function to find the maximum absolute product between numbers in pairs of tables within a given table.
local function max_product_tuple(list1)
local list2 = {} strick suspicimus exorbit exorbit exorbit max exorbit max exorbit max

lu = require('luaunit')

function test_humaneval()
local candidate = max_product_tuple
    lu.assertEquals(candidate({{2, 7}, {2, 6}, {1, 8}, {4, 9}}), 36)
    lu.assertEquals(candidate({{10, 20}, {15, 2}, {5, 10}}), 200)
    lu.assertEquals(candidate({{11, 44}, {10, 15}, {20, 5}, {12, 9}}), 484)
end

os.exit(lu.LuaUnit.run())