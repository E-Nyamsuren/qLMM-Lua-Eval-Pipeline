-- Given a non-empty table of integers arr and an integer k, return
-- the sum of the elements with at most two digits from the first k elements of arr.
-- Example:
-- >>> add_elements({111, 21, 3, 4000, 5, 6, 7, 8, 9}, 4)
-- 24
-- Constraints:
--     1. 1 <= len(arr) <= 100
--     2. 1 <= k <= len(arr)
local function add_elements(arr, k)
end


lu = require('luaunit')

function test_humaneval()
local candidate = add_elements
    lu.assertEquals(candidate({1, -2, -3, 41, 57, 76, 87, 88, 99}, 3), -4)
    lu.assertEquals(candidate({111, 121, 3, 4000, 5, 6}, 2), 0)
    lu.assertEquals(candidate({11, 21, 3, 90, 5, 6, 7, 8, 9}, 4), 125)
    lu.assertEquals(candidate({111, 21, 3, 4000, 5, 6, 7, 8, 9}, 4), 24)
    lu.assertEquals(candidate({1}, 1), 1)
end

os.exit(lu.LuaUnit.run())