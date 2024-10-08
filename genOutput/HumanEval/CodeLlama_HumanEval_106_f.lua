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
            result[i] = i
        else
            result[i] = 0
            for j = 1, i do
                result[i] = result[i] + j
            end
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = f
    lu.assertEquals(candidate(5), {1, 2, 6, 24, 15})
    lu.assertEquals(candidate(7), {1, 2, 6, 24, 15, 720, 28})
    lu.assertEquals(candidate(1), {1})
    lu.assertEquals(candidate(3), {1, 2, 6})
end

os.exit(lu.LuaUnit.run())