-- Write a luathon function to find the sum of fourth power of first n odd natural numbers.
local function odd_num_sum(n)
    local sum = 0
    local count = 0
    for i = 1, n*2, 2 do
        sum = sum + i^4
        count = count + 1
    end
    return sum, count
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_num_sum
    lu.assertEquals(candidate(2), 82)
    lu.assertEquals(candidate(3), 707)
    lu.assertEquals(candidate(4), 3108)
end

os.exit(lu.LuaUnit.run())