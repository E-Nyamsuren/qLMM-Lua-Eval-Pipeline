-- You are given a positive integer n. You have to create an integer table a of length n.
-- For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
-- Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
--     and a[i] + a[j] + a[k] is a multiple of 3.
--     Example :
--     >>> get_max_triples(5)
--     1
-- Explanation: 
-- a = [1, 3, 7, 13, 21]
-- The only valid triple is (1, 7, 13).
local function get_max_triples(n)
    local a = {}
    for i = 1, n do
        a[i] = i * i - i + 1
    end
    local count = 0
    for i = 1, n - 2 do
        for j = i + 1, n - 1 do
            for k = j + 1, n do
                if (a[i] + a[j] + a[k]) % 3 == 0 then
                    count = count + 1
                end
            end
        end
    end
    return count
end
print(get_max_triples(5)) -- Output: 1
```
In this code snippet, the function `get_max_triples` takes a positive integer `n` as input and returns the number of triples `(a[i], a[j], a[k])` of the array `a` where `i < j < k`, and `a[i] + a[j] + a[k]` is a multiple of 3. The array `a` is created by calculating the value of each element as `i * i - i + 1` for each `i` (1 ≤ i ≤ n). The function then iterates through all possible triples of elements in the array `a` and counts the number of triples where the sum of the elements is a multiple of 3. Finally, the function returns the count of such tri

lu = require('luaunit')

function test_humaneval()
local candidate = get_max_triples
    lu.assertEquals(candidate(5), 1)
    lu.assertEquals(candidate(6), 4)
    lu.assertEquals(candidate(10), 36)
    lu.assertEquals(candidate(100), 53361)
end

os.exit(lu.LuaUnit.run())