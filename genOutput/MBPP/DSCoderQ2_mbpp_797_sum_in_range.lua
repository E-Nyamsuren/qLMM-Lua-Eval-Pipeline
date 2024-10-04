-- Write a luathon function to find the sum of all odd natural numbers within the range l and r.
local function sum_in_range(l, r)
    local sum = 0
    for i = l, r do
        if i % 2 ~= 0 then
            sum = sum + i
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_in_range
    lu.assertEquals(candidate(2, 5), 8)
    lu.assertEquals(candidate(5, 7), 12)
    lu.assertEquals(candidate(7, 13), 40)
end

os.exit(lu.LuaUnit.run())