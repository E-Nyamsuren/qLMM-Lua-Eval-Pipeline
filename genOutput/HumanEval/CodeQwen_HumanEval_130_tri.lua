-- Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
-- the last couple centuries. However, what people don't know is Tribonacci sequence.
-- Tribonacci sequence is defined by the recurrence:
-- tri(1) = 3
-- tri(n) = 1 + n / 2, if n is even.
-- tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
-- For example:
-- tri(2) = 1 + (2 / 2) = 2
-- tri(4) = 3
-- tri(3) = tri(2) + tri(1) + tri(4)
--        = 2 + 3 + 3 = 8 
-- You are given a non-negative integer number n, you have to a return a table of the 
-- first n + 1 numbers of the Tribonacci sequence.
-- Examples:
-- >>> tri(3)
-- {1, 3, 2, 8}
local function tri(n)
    local result = {3}
    for i = 2, n + 1 do
        if i % 2 == 0 then
            table.insert(result, 1 + i / 2)
        else
            local a = result[i - 1]
            local b = result[i - 2]
            local c = result[i + 1]
            table.insert(result, a + b + c)
        end
    end
    return result
end
print(table.concat(tri(3), ", ")) -- 1, 3, 2, 8
print(table.concat(tri(4), ", ")) -- 1, 3, 2, 8, 4
print(table.concat(tri(5), ", ")) -- 1, 3, 2, 8, 4, 7
print(table.concat(tri(6), ", ")) -- 1, 3, 2, 8, 4, 7, 10
print(table.concat(tri(7), ", ")) -- 1, 

lu = require('luaunit')

function test_humaneval()
local candidate = tri
    lu.assertEquals(candidate(3), {1, 3, 2, 8})
    lu.assertEquals(candidate(4), {1, 3, 2, 8, 3})
    lu.assertEquals(candidate(5), {1, 3, 2, 8, 3, 15})
    lu.assertEquals(candidate(6), {1, 3, 2, 8, 3, 15, 4})
    lu.assertEquals(candidate(7), {1, 3, 2, 8, 3, 15, 4, 24})
    lu.assertEquals(candidate(8), {1, 3, 2, 8, 3, 15, 4, 24, 5})
    lu.assertEquals(candidate(9), {1, 3, 2, 8, 3, 15, 4, 24, 5, 35})
    lu.assertEquals(candidate(20), {1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11})
    lu.assertEquals(candidate(0), {1})
    lu.assertEquals(candidate(1), {1, 3})
end

os.exit(lu.LuaUnit.run())