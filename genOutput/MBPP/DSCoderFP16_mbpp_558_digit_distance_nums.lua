-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
    local sum = 0
    for i = 0, 9 do
        local d1 = math.floor(n1 / 10^(9-i)) % 10
        local d2 = math.floor(n2 / 10^(9-i)) % 10
        sum = sum + math.abs(d1 - d2)
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