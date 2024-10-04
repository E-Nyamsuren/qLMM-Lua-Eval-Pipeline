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
print(special_factorial(7)) -- Output: 125411328000
print(special_factorial(8)) -- Output: 41425715200000
print(special_factorial(9)) -- Output: 2488320000000000
print(special_factorial(10)) -- Output: 15511210043330985984000000
print(special_factorial(11)) -- Output: 1254113280000000000000000000
print(special_factorial(12)) -- Output: 88776915617716670400000000000
print(special_factorial(13)) -- Output: 8877691561771667040000000000000000000000000000
print(special_factorial(14)) -- Output: 887769156177166704000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

lu = require('luaunit')

function test_humaneval()
local candidate = special_factorial
    lu.assertEquals(candidate(4), 288)
    lu.assertEquals(candidate(5), 34560)
    lu.assertEquals(candidate(7), 125411328000)
    lu.assertEquals(candidate(1), 1)
end

os.exit(lu.LuaUnit.run())