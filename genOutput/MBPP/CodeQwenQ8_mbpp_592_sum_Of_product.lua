-- Write a luathon function to find the sum of the product of consecutive binomial co-efficients.
local function sum_Of_product(n)
    -- Initialize the sum to 0
    local sum = 0
    -- Loop through the range from 1 to n-1
    for i = 1, n-1 do
        -- Calculate the product of the binomial coefficients at positions i and i+1
        local product = math.comb(n, i) * math.comb(n, i+1)
        -- Add the product to the sum
        sum = sum + product
    end
    -- Return the sum
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