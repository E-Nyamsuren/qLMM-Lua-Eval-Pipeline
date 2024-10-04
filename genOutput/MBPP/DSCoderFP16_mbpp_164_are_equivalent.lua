-- Write a function to determine if the sum of the divisors of two integers are the same.
local function are_equivalent(num1, num2)
    local function sum_of_divisors(n)
        local sum = 0
        for i = 1, n do
            if n % i == 0 then
                sum = sum + i
            end
        end
        return sum
    end

lu = require('luaunit')

function test_humaneval()
local candidate = are_equivalent
    lu.assertEquals(candidate(36, 57), false)
    lu.assertEquals(candidate(2, 4), false)
    lu.assertEquals(candidate(23, 47), true)
end

os.exit(lu.LuaUnit.run())