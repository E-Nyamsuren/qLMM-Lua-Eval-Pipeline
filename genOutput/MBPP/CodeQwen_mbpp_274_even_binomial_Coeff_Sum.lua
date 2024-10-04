-- Write a luathon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
local function even_binomial_Coeff_Sum(n)
    -- Initialize the sum to 0
    local sum = 0
    -- Loop through the range of 0 to n
    for i = 0, n do
        -- Calculate the binomial coefficient for the current index
        local binomial = 1
        for j = 1, i do
            binomial = binomial * (i - j + 1) / j
        end
        -- If the index is even, add the binomial coefficient to the sum
        if i % 2 == 0 then
            sum = sum + binomial
        end
    end
    -- Return the sum
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