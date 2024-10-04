-- A simple program which should return the value of x if n is 
-- a prime number and should return the value of y otherwise.
-- Examples:
-- >>> x_or_y(7, 34, 12)
-- 34
-- >>> x_or_y(15, 8, 5)
-- 5
local function x_or_y(n, x, y)
    local function is_prime(num)
        if num <= 1 then
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
print(x_or_y(7, 34, 12)) -- Should print 34
print(x_or_y(15, 8, 5)) -- Should print 5
print(x_or_y(13, 20, 10)) -- Should print 20
print(x_or_y(22, 30, 25)) -- Should print 25
print(x_or_y(2, 100, 50)) -- Should print 100
print(x_or_y(4, 200, 75)) -- Should print 75
print(x_or_y(17, 300, 100)) -- Should print 300
print(x_or_y(18, 400, 125)) -- Should print 125
print(x_or_y(19, 500, 150)) -- Should print 500
print(x_or_y(20, 600, 175)) -- Should print 175
print(x_or_y(21, 700, 200)) -- Should print 200
print(x_or_y(22, 800, 225)) -- Should print 225
print(x_or_y(23, 900, 250)) -- Should print 250
print(x_or_y(24, 1000, 275)) -- Should print 275
print(x_or_y(25, 1100, 300)) -- Should print 300
print(x_or_

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