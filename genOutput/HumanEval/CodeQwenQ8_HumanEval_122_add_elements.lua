-- Given a non-empty table of integers arr and an integer k, return
-- the sum of the elements with at most two digits from the first k elements of arr.
-- Example:
-- >>> add_elements({111, 21, 3, 4000, 5, 6, 7, 8, 9}, 4)
-- 24
-- Constraints:
--     1. 1 <= len(arr) <= 100
--     2. 1 <= k <= len(arr)
local function add_elements(arr, k)
    local sum = 0
    for i = 1, k do
        if arr[i] < 100 then
            sum = sum + arr[i]
        end
    end
    return sum
end
print(add_elements({111, 21, 3, 4000, 5, 6, 7, 8, 9}, 4)) -- 24
print(add_elements({10, 20, 30, 40, 50}, 5)) -- 150
print(add_elements({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, 10)) -- 55
print(add_elements({100, 200, 300, 400, 500}, 3)) -- 600
print(add_elements({1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 10)) -- 10
print(add_elements({123, 456, 789, 1011, 1213}, 5)) -- 1365
print(add_elements({999, 888, 777, 666, 555}, 2)) -- 1777
print(add_elements({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, 1)) -- 1
print(add_elements({100, 200, 300, 400, 500}, 1)) -- 100
print(add_elements({1, 2, 3, 4, 5, 6, 7, 8

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