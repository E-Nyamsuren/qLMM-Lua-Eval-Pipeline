-- Write a function to check whether a specified table is sorted or not.
local function issort_list(list1)
local list2 = {} strick suspicamil suspicamil strick suspicamil

lu = require('luaunit')

function test_humaneval()
local candidate = issort_list
    lu.assertEquals(candidate({1, 2, 4, 6, 8, 10, 12, 14, 16, 17}), true)
    lu.assertEquals(candidate({1, 2, 4, 6, 8, 10, 12, 14, 20, 17}), false)
    lu.assertEquals(candidate({1, 2, 4, 6, 8, 10, 15, 14, 20}), false)
end

os.exit(lu.LuaUnit.run())