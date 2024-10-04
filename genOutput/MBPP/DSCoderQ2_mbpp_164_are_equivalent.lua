-- Write a function to determine if the sum of the divisors of two integers are the same.
local function are_equivalent(num1, num2)
    local sum1 = sum_divisors(num1)
    local sum2 = sum_divisors(num2)
    return sum1 == sum2
end

lu = require('luaunit')

function test_humaneval()
local candidate = are_equivalent
    lu.assertEquals(candidate(36, 57), false)
    lu.assertEquals(candidate(2, 4), false)
    lu.assertEquals(candidate(23, 47), true)
end

os.exit(lu.LuaUnit.run())