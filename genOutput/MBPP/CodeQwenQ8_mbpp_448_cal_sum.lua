-- Write a function to calculate the sum of perrin numbers.
local function cal_sum(n)
    local p1, p2, p3 = 3, 0, 2
    local sum = p1 + p2 + p3
    for i = 4, n do
        local p4 = p1 + p2
        sum = sum + p4
        p1, p2, p3 = p2, p3, p4
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