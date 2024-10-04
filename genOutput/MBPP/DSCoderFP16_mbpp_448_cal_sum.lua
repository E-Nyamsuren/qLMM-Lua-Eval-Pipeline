-- Write a function to calculate the sum of perrin numbers.
local function cal_sum(n)

    -- Initialize the sum
    local sum = 0

lu = require('luaunit')

function test_humaneval()
local candidate = cal_sum
    lu.assertEquals(candidate(9), 49)
    lu.assertEquals(candidate(10), 66)
    lu.assertEquals(candidate(11), 88)
end

os.exit(lu.LuaUnit.run())