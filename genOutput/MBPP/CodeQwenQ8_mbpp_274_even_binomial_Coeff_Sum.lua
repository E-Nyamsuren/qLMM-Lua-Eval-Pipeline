-- Write a luathon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
local function even_binomial_Coeff_Sum(n)
    -- Initialize the sum to 0
    local sum = 0
    -- Loop through the even indices
    for i = 0, n, 2 do
        -- Add the binomial coefficient at the even index to the sum
        sum = sum + math.pow(2, n - i)
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