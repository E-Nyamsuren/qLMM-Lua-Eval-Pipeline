-- A simple program which should return the value of x if n is 
-- a prime number and should return the value of y otherwise.
-- Examples:
-- >>> x_or_y(7, 34, 12)
-- 34
-- >>> x_or_y(15, 8, 5)
-- 5
local function x_or_y(n, x, y)
    local function is_prime(num)
        if num < 2 then
            return false
        end
        for i = 2, math.sqrt(num) do
            if num % i == 0 then
                return false
            end
        end
        return true
    end
    return is_prime(n) and x or y
end
print(x_or_y(7, 34, 12)) -- 34
print(x_or_y(15, 8, 5)) -- 5
print(x_or_y(13, 20, 30)) -- 20
print(x_or_y(22, 10, 15)) -- 15
print(x_or_y(2, 100, 200)) -- 100
print(x_or_y(3, 50, 75)) -- 50
print(x_or_y(4, 25, 45)) -- 45
print(x_or_y(5, 30, 60)) -- 30
print(x_or_y(6, 20, 40)) -- 40
print(x_or_y(7, 15, 25)) -- 15
print(x_or_y(8, 10, 20)) -- 10
print(x_or_y(9, 5, 10)) -- 10
print(x_or_y(10, 2, 3)) -- 2
print(x_or_y(11, 1, 2)) -- 1
print(x_or_y(12, 0, 1)) -- 0
print(x_or_y(13, -1, -2)) -- -1
print(x_or_y(14, -2, -3)) -- -

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