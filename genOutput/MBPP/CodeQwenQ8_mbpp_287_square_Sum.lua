-- Write a luathon function takes in an integer n and returns the sum of squares of first n even natural numbers.
local function square_Sum(n)
    local sum = 0
    for i = 1, n do
        sum = sum + (2 * i) * (2 * i)
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = square_Sum
    lu.assertEquals(candidate(2), 20)
    lu.assertEquals(candidate(3), 56)
    lu.assertEquals(candidate(4), 120)
end

os.exit(lu.LuaUnit.run())