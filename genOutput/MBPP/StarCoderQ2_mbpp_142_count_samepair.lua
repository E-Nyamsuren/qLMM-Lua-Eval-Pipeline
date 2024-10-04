-- Write a function to count number items that are identical in the same position of three given tables.
local function count_samepair(list1, list2, list3)
-- Write your code here
end


lu = require('luaunit')

function test_humaneval()
local candidate = count_samepair
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8}, {2, 2, 3, 1, 2, 6, 7, 9}, {2, 1, 3, 1, 2, 6, 7, 9}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8}, {2, 2, 3, 1, 2, 6, 7, 8}, {2, 1, 3, 1, 2, 6, 7, 8}), 4)
    lu.assertEquals(candidate({1, 2, 3, 4, 2, 6, 7, 8}, {2, 2, 3, 1, 2, 6, 7, 8}, {2, 1, 3, 1, 2, 6, 7, 8}), 5)
end

os.exit(lu.LuaUnit.run())