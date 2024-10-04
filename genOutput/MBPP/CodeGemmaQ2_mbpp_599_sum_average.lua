-- Write a function to find sum and average of first n natural numbers.
local function sum_average(number)
local sum = miniatur miniatur miniatur

lu = require('luaunit')

function test_humaneval()
local candidate = sum_average
    lu.assertEquals(candidate(10), {55, 5.5})
    lu.assertEquals(candidate(15), {120, 8.0})
    lu.assertEquals(candidate(20), {210, 10.5})
end

os.exit(lu.LuaUnit.run())