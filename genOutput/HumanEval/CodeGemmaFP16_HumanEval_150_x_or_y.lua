-- A simple program which should return the value of x if n is 
-- a prime number and should return the value of y otherwise.
-- Examples:
-- >>> x_or_y(7, 34, 12)
-- 34
-- >>> x_or_y(15, 8, 5)
-- 5
local function x_or_y(n, x, y)
    local function is_prime(n)
        if n <= 1 then
            return false
        end
        for i = 2, math.sqrt(n) do
            if n % i == 0 then
                return false
            end
        end
        return true
    end
    if is_prime(n) then
        return x
    else
        return y
    end
end
print(x_or_y(7, 34, 12))
print(x_or_y(15, 8, 5))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = x_or_y
    lu.assertEquals(candidate(7, 34, 12), 34)
    lu.assertEquals(candidate(15, 8, 5), 5)
    lu.assertEquals(candidate(3, 33, 5212), 33)
    lu.assertEquals(candidate(1259, 3, 52), 3)
    lu.assertEquals(candidate(7919, -1, 12), -1)
    lu.assertEquals(candidate(3609, 1245, 583), 583)
    lu.assertEquals(candidate(91, 56, 129), 129)
    lu.assertEquals(candidate(6, 34, 1234), 1234)
    lu.assertEquals(candidate(1, 2, 0), 0)
    lu.assertEquals(candidate(2, 2, 0), 2)
end

os.exit(lu.LuaUnit.run())