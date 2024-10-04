-- Write a luathon function to find the sum of fourth power of first n odd natural numbers.
local function odd_num_sum(n)
    local sum = 0
    for i = 1, n do
        if i % 2 ~= 0 then
            sum = sum + i ^ 4
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_num_sum
    lu.assertEquals(candidate(2), 82)
    lu.assertEquals(candidate(3), 707)
    lu.assertEquals(candidate(4), 3108)
end

os.exit(lu.LuaUnit.run())