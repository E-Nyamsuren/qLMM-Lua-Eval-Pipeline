-- Write a function to sum all amicable numbers from 1 to a specified number.
local function amicable_numbers_sum(limit)
    local amicable_numbers = {}
    
    for i = 1, limit do
        local sum_of_divisors = 0
        for j = 1, i do
            if i % j == 0 then
                sum_of_divisors = sum_of_divisors + j
            end
        end
        
        if sum_of_divisors > i and sum_of_divisors < limit then
            amicable_numbers[i] = sum_of_divisors
        end
    end
    
    local sum = 0
    for i, j in pairs(amicable_numbers) do
        if amicable_numbers[j] == i and amicable_numbers[j] < limit then
            sum = sum + i + j
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