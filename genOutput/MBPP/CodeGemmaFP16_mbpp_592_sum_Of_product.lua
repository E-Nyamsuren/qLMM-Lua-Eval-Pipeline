-- Write a luathon function to find the sum of the product of consecutive binomial co-efficients.
local function sum_Of_product(n)
    local sum = 0
    for i = 1, n do
        local product = 1
        for j = 1, i do
            product = product * (i - j + 1)
        end
        sum = sum + product
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