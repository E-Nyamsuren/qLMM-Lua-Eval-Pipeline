-- Write a function to sum all amicable numbers from 1 to a specified number.
local function amicable_numbers_sum(limit)
    local function sum_of_divisors(n)
        local sum = 1
        for i = 2, math.floor(math.sqrt(n)) do
            if n % i == 0 then
                sum = sum + i
                if i ~= n / i then
                    sum = sum + n / i
                end
            end
        end
        return sum
    end

lu = require('luaunit')

function test_humaneval()
local candidate = amicable_numbers_sum
    lu.assertEquals(candidate(999), 504)
    lu.assertEquals(candidate(9999), 31626)
    lu.assertEquals(candidate(99), 0)
end

os.exit(lu.LuaUnit.run())