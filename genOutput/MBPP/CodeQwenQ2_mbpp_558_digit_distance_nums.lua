-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
    local sum = 0
    local diff = 0
    for i = 1, math.max(#n1, #n2) do
        digit1 = tonumber(string.sub(n1, i, i)) or 0
        digit2 = tonumber(string.sub(n2, i, i)) or 0
        diff = math.abs(digit1 - digit2)
        sum = sum + diff
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = digit_distance_nums
    lu.assertEquals(candidate(1, 2), 1)
    lu.assertEquals(candidate(23, 56), 6)
    lu.assertEquals(candidate(123, 256), 7)
end

os.exit(lu.LuaUnit.run())