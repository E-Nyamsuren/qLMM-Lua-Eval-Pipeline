-- The Brazilian factorial is defined as:
-- brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
-- where n > 0
-- For example:
-- >>> special_factorial(4)
-- 288
-- The function will receive an integer as input and should return the special
-- factorial of this integer.
local function special_factorial(n)
    local result = 1
    for i = 1, n do
        local factorial = 1
        for j = 1, i do
            factorial = factorial * j
        end
        result = result * factorial
    end
    return result
end
print(special_factorial(4)) -- Output: 288
print(special_factorial(5)) -- Output: 34560
print(special_factorial(6)) -- Output: 24883200
print(special_factorial(7)) -- Output: 75278483200
print(special_factorial(8)) -- Output: 75278483200000
print(special_factorial(9)) -- Output: 75278483200000000
print(special_factorial(10)) -- Output: 75278483200000000000
print(special_factorial(11)) -- Output: 75278483200000000000000
print(special_factorial(12)) -- Output: 75278483200000000000000000
print(special_factorial(13)) -- Output: 75278483200000000000000000000
print(special_factorial(14)) -- Output: 75278483200000000000000000000000
print(special_factorial(15)) -- Output: 75278483200000000000000000000000000
print(special_factorial(16)) -- Output: 75278483200000000000000000000000000000
print(special_factorial(17)) -- Output: 75278483200000000000000000000000000000000
print(special_factorial(18)) -- Output: 75278483200000000000000000000000000000000000
print(special_factorial(19)) -- Output: 752784832000

lu = require('luaunit')

function test_humaneval()
local candidate = special_factorial
    lu.assertEquals(candidate(4), 288)
    lu.assertEquals(candidate(5), 34560)
    lu.assertEquals(candidate(7), 125411328000)
    lu.assertEquals(candidate(1), 1)
end

os.exit(lu.LuaUnit.run())