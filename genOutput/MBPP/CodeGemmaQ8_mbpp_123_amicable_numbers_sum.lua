-- Write a function to sum all amicable numbers from 1 to a specified number.
local function amicable_numbers_sum(limit)
    local sum = 0
    for i = 1, limit do
        local j = 1
        local sum_i = 0
        while j < i do
            if i % j == 0 then
                sum_i = sum_i + j
            end
            j = j + 1
        end
        local sum_j = 0
        local k = 1
        while k < j do
            if j % k == 0 then
                sum_j = sum_j + k
            end
            k = k + 1
        end
        if i == sum_j and j == sum_i then
            sum = sum + i
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