-- Write a luathon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
local function even_binomial_Coeff_Sum(n)
    local sum = 0
    for i = 0, n do
        local binomial_coeff = binomial_coeff(n, i)
        if i % 2 == 0 then
            sum = sum + binomial_coeff
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = even_binomial_Coeff_Sum
    lu.assertEquals(candidate(4), 8)
    lu.assertEquals(candidate(6), 32)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())