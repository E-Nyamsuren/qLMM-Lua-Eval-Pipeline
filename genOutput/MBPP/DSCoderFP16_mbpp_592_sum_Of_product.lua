-- Write a luathon function to find the sum of the product of consecutive binomial co-efficients.
local function sum_Of_product(n)
    local sum = 0
    local factorial_of_2n = 1
    local factorial_of_2n_minus_1 = 1
    local factorial_of_n = 1
    for i = 1, n do
        factorial_of_2n_minus_1 = factorial_of_2n_minus_1 * 2
        factorial_of_2n = factorial_of_2n * i
        factorial_of_n = factorial_of_n * i
        sum = sum + factorial_of_2n_minus_1 * factorial_of_n
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_Of_product
    lu.assertEquals(candidate(3), 15)
    lu.assertEquals(candidate(4), 56)
    lu.assertEquals(candidate(1), 1)
end

os.exit(lu.LuaUnit.run())