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
    local changes = 0
    local left = 1
    local right = #arr
    while left < right do
        if arr[left] ~= arr[right] then
            changes = changes + 1
        end
        left = left + 1
        right = right - 1
    end
    return changes
end
print(smallest_change({1, 2, 3, 5, 4, 7, 9, 6})) -- 4
print(smallest_change({1, 2, 3, 4, 3, 2, 2})) -- 1
print(smallest_change({1, 2, 3, 2, 1})) -- 0
```
The `smallest_change` function takes a table `arr` of integers as input and returns the minimum number of changes required to make the table palindromic. It initializes a variable `changes` to 0 and two pointers, `left` and `right`, to the first and last elements of the table, respectively. It then enters a loop that continues until the `left` pointer is no longer less than the `right` pointer. Within the loop, it checks if the elements at the `left` and `right` pointers are not equal. If they are not equal, it increments the `changes` variable by 1. It then increments the `left` pointer by 1 and decrements the `right` pointer by 1. Finally, it returns the `changes`

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