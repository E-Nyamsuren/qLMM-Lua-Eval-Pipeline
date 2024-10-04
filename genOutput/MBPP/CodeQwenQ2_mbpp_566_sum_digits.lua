-- Write a function to get the sum of the digits of a non-negative integer.
local function sum_digits(n)
    local sum = 0
    while n > 0 do
        sum = sum + n % 10
        n = math.floor(n / 10)
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_digits
    lu.assertEquals(candidate(345), 12)
    lu.assertEquals(candidate(12), 3)
    lu.assertEquals(candidate(97), 16)
end

os.exit(lu.LuaUnit.run())