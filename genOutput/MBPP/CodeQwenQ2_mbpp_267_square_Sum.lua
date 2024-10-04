-- Write a luathon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers.
local function square_Sum(n)
    local sum = 0
    for i = 1, n do
        local odd_number = 2 * i - 1
        sum = sum + odd_number * odd_number
    end
    return sum
end
return square_Sum

lu = require('luaunit')

function test_humaneval()
local candidate = square_Sum
    lu.assertEquals(candidate(2), 10)
    lu.assertEquals(candidate(3), 35)
    lu.assertEquals(candidate(4), 84)
end

os.exit(lu.LuaUnit.run())