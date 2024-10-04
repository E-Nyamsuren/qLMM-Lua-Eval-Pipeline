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
    local i = 1
    local j = #arr
    while i < j do
        if arr[i] ~= arr[j] then
            changes = changes + 1
        end
        i = i + 1
        j = j - 1
    end
    return changes
end
print(smallest_change({1, 2, 3, 5, 4, 7, 9, 6})) -- 4
print(smallest_change({1, 2, 3, 4, 3, 2, 2})) -- 1
print(smallest_change({1, 2, 3, 2, 1})) -- 0
```
In this code, we define a function `smallest_change` that takes a table `arr` as input and returns the minimum number of changes needed to make the table palindromic. We initialize a variable `changes` to 0, which will keep track of the number of changes needed. We then initialize two variables `i` and `j` to 1 and #arr respectively, which will represent the indices of the elements we are comparing. We enter a while loop that continues until `i` is less than `j`. Inside the loop, we check if the elements at indices `i` and `j` are not equal. If they are not equal, we increment the `changes` variable by 1. We then increment `i` by 1 and decrement `j` by 1.

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