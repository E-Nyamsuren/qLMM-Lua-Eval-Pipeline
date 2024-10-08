-- Given a table arr of integers, find the minimum number of elements that
-- need to be changed to make the table palindromic. A palindromic table is a table that
-- is read the same backwards and forwards. In one change, you can change one element to any other element.
-- For example:
-- >>> smallest_change({1, 2, 3, 5, 4, 7, 9, 6})
-- 4
-- >>> smallest_change({1, 2, 3, 4, 3, 2, 2})
-- 1
-- >>> smallest_change({1, 2, 3, 2, 1})
-- 0
local function smallest_change(arr)
 vagu suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspic

lu = require('luaunit')

function test_humaneval()
local candidate = smallest_change
    lu.assertEquals(candidate({1, 2, 3, 5, 4, 7, 9, 6}), 4)
    lu.assertEquals(candidate({1, 2, 3, 4, 3, 2, 2}), 1)
    lu.assertEquals(candidate({1, 4, 2}), 1)
    lu.assertEquals(candidate({1, 4, 4, 2}), 1)
    lu.assertEquals(candidate({1, 2, 3, 2, 1}), 0)
    lu.assertEquals(candidate({3, 1, 1, 3}), 0)
    lu.assertEquals(candidate({1}), 0)
    lu.assertEquals(candidate({0, 1}), 1)
end

os.exit(lu.LuaUnit.run())