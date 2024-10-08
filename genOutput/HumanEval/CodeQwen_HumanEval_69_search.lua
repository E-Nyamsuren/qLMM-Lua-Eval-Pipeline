-- You are given a non-empty table of positive integers. Return the greatest integer that is greater than 
-- zero, and has a frequency greater than or equal to the value of the integer itself. 
-- The frequency of an integer is the number of times it appears in the table.
-- If no such a value exist, return -1.
-- Examples:
-- >>> search({4, 1, 2, 2, 3, 1})
-- 2
-- >>> search({1, 2, 2, 3, 3, 3, 4, 4, 4})
-- 3
-- >>> search({5, 5, 4, 4, 4})
-- -1
local function search(lst)
    local freq = {}
    for _, v in ipairs(lst) do
        freq[v] = (freq[v] or 0) + 1
    end
    local max_val = -1
    for k, v in pairs(freq) do
        if k > 0 and v >= k and k > max_val then
            max_val = k
        end
    end
    return max_val
end
print(search({4, 1, 2, 2, 3, 1})) -- 2
print(search({1, 2, 2, 3, 3, 3, 4, 4, 4})) -- 3
print(search({5, 5, 4, 4, 4})) -- -1
```
In this code snippet, we define a function `search` that takes a list of positive integers as input. We create a dictionary `freq` to store the frequency of each integer in the list. Then, we iterate through the dictionary to find the maximum integer that satisfies the given conditions. If no such integer is found, we return -1. Finally, we test the function with the provided examples to verify its correctness.

lu = require('luaunit')

function test_humaneval()
local candidate = search
    lu.assertEquals(candidate({5, 5, 5, 5, 1}), 1)
    lu.assertEquals(candidate({4, 1, 4, 1, 4, 4}), 4)
    lu.assertEquals(candidate({3, 3}), -1)
    lu.assertEquals(candidate({8, 8, 8, 8, 8, 8, 8, 8}), 8)
    lu.assertEquals(candidate({2, 3, 3, 2, 2}), 2)
    lu.assertEquals(candidate({2, 7, 8, 8, 4, 8, 7, 3, 9, 6, 5, 10, 4, 3, 6, 7, 1, 7, 4, 10, 8, 1}), 1)
    lu.assertEquals(candidate({3, 2, 8, 2}), 2)
    lu.assertEquals(candidate({6, 7, 1, 8, 8, 10, 5, 8, 5, 3, 10}), 1)
    lu.assertEquals(candidate({8, 8, 3, 6, 5, 6, 4}), -1)
    lu.assertEquals(candidate({6, 9, 6, 7, 1, 4, 7, 1, 8, 8, 9, 8, 10, 10, 8, 4, 10, 4, 10, 1, 2, 9, 5, 7, 9}), 1)
    lu.assertEquals(candidate({1, 9, 10, 1, 3}), 1)
    lu.assertEquals(candidate({6, 9, 7, 5, 8, 7, 5, 3, 7, 5, 10, 10, 3, 6, 10, 2, 8, 6, 5, 4, 9, 5, 3, 10}), 5)
    lu.assertEquals(candidate({1}), 1)
    lu.assertEquals(candidate({8, 8, 10, 6, 4, 3, 5, 8, 2, 4, 2, 8, 4, 6, 10, 4, 2, 1, 10, 2, 1, 1, 5}), 4)
    lu.assertEquals(candidate({2, 10, 4, 8, 2, 10, 5, 1, 2, 9, 5, 5, 6, 3, 8, 6, 4, 10}), 2)
    lu.assertEquals(candidate({1, 6, 10, 1, 6, 9, 10, 8, 6, 8, 7, 3}), 1)
    lu.assertEquals(candidate({9, 2, 4, 1, 5, 1, 5, 2, 5, 7, 7, 7, 3, 10, 1, 5, 4, 2, 8, 4, 1, 9, 10, 7, 10, 2, 8, 10, 9, 4}), 4)
    lu.assertEquals(candidate({2, 6, 4, 2, 8, 7, 5, 6, 4, 10, 4, 6, 3, 7, 8, 8, 3, 1, 4, 2, 2, 10, 7}), 4)
    lu.assertEquals(candidate({9, 8, 6, 10, 2, 6, 10, 2, 7, 8, 10, 3, 8, 2, 6, 2, 3, 1}), 2)
    lu.assertEquals(candidate({5, 5, 3, 9, 5, 6, 3, 2, 8, 5, 6, 10, 10, 6, 8, 4, 10, 7, 7, 10, 8}), -1)
    lu.assertEquals(candidate({10}), -1)
    lu.assertEquals(candidate({9, 7, 7, 2, 4, 7, 2, 10, 9, 7, 5, 7, 2}), 2)
    lu.assertEquals(candidate({5, 4, 10, 2, 1, 1, 10, 3, 6, 1, 8}), 1)
    lu.assertEquals(candidate({7, 9, 9, 9, 3, 4, 1, 5, 9, 1, 2, 1, 1, 10, 7, 5, 6, 7, 6, 7, 7, 6}), 1)
    lu.assertEquals(candidate({3, 10, 10, 9, 2}), -1)
end

os.exit(lu.LuaUnit.run())