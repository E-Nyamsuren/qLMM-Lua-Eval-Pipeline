-- Write a luathon function that takes in an integer n and finds the sum of the first n even natural numbers that are raised to the fifth power.
local function even_Power_Sum(n)
    local sum = 0
    for i = 1, n do
        local even_num = 2 * i
        local power_num = even_num ^ 5
        sum = sum + power_num
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = even_Power_Sum
    lu.assertEquals(candidate(2), 1056)
    lu.assertEquals(candidate(3), 8832)
    lu.assertEquals(candidate(1), 32)
end

os.exit(lu.LuaUnit.run())