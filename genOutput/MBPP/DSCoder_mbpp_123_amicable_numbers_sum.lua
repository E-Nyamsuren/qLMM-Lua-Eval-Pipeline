-- Write a function to sum all amicable numbers from 1 to a specified number.
local function amicable_numbers_sum(limit)
    local function d(n)
        local sum = 1
        local m = 2
        while m * m <= n do
            if n % m == 0 then
                sum = sum + m
                if m * m ~= n then
                    sum = sum + n / m
                end
            end
            m = m + 1
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