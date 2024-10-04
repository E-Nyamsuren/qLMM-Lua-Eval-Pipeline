-- Write a function to determine if the sum of the divisors of two integers are the same.
local function are_equivalent(num1, num2)
    local divisors1 = {}
    local divisors2 = {}
    local sum1 = 0
    local sum2 = 0

lu = require('luaunit')

function test_humaneval()
local candidate = are_equivalent
    lu.assertEquals(candidate(36, 57), false)
    lu.assertEquals(candidate(2, 4), false)
    lu.assertEquals(candidate(23, 47), true)
end

os.exit(lu.LuaUnit.run())