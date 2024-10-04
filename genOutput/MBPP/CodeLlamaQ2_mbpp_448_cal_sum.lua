-- Write a function to calculate the sum of perrin numbers.
local function cal_sum(n)
    local sum = 0
    for i = 1, n do
        sum = sum + i
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = cal_sum
    lu.assertEquals(candidate(9), 49)
    lu.assertEquals(candidate(10), 66)
    lu.assertEquals(candidate(11), 88)
end

os.exit(lu.LuaUnit.run())