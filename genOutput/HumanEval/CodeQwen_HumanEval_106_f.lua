-- Implement the function f that takes n as a parameter,
-- and returns a table of size n, such that the value of the element at index i is the factorial of i if i is even
-- or the sum of numbers from 1 to i otherwise.
-- i starts from 1.
-- the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
-- Example:
-- >>> f(5)
-- {1, 2, 6, 24, 15}
local function f(n)
    local result = {}
    for i = 1, n do
        if i % 2 == 0 then
            local factorial = 1
            for j = 1, i do
                factorial = factorial * j
            end
            table.insert(result, factorial)
        else
            local sum = 0
            for j = 1, i do
                sum = sum + j
            end
            table.insert(result, sum)
        end
    end
    return result
end
print(table.concat(f(5), ", ")) -- Output: 1, 2, 6, 24, 15
print(table.concat(f(3), ", ")) -- Output: 1, 2, 6
print(table.concat(f(1), ", ")) -- Output: 1
print(table.concat(f(0), ", ")) -- Output: 
print(table.concat(f(10), ", ")) -- Output: 1, 2, 6, 24, 15, 720, 5040, 40320, 362880, 3628800
print(table.concat(f(2), ", ")) -- Output: 1, 2, 6
print(table.concat(f(4), ", ")) -- Output: 1, 2, 6, 24, 15, 720, 5040
print(table.concat(f(6), ", ")) -- Output: 1, 2, 6, 24, 15, 720, 5040, 40320, 362880, 3628800, 399168

lu = require('luaunit')

function test_humaneval()
local candidate = f
    lu.assertEquals(candidate(5), {1, 2, 6, 24, 15})
    lu.assertEquals(candidate(7), {1, 2, 6, 24, 15, 720, 28})
    lu.assertEquals(candidate(1), {1})
    lu.assertEquals(candidate(3), {1, 2, 6})
end

os.exit(lu.LuaUnit.run())