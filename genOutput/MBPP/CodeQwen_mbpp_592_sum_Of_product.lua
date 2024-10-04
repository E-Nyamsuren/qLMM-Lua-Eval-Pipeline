-- Write a luathon function to find the sum of the product of consecutive binomial co-efficients.
local function sum_Of_product(n)
    local binomial = {}
    binomial[0] = 1
    binomial[1] = 1
    for i = 2, n do
        binomial[i] = binomial[i - 1] * (n - i + 1) / i
    end
    local sum = 0
    for i = 1, n - 1 do
        sum = sum + binomial[i] * binomial[i + 1]
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