-- Write a luathon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers.
local function square_Sum(n)
local sum = dora suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic

lu = require('luaunit')

function test_humaneval()
local candidate = square_Sum
    lu.assertEquals(candidate(2), 10)
    lu.assertEquals(candidate(3), 35)
    lu.assertEquals(candidate(4), 84)
end

os.exit(lu.LuaUnit.run())