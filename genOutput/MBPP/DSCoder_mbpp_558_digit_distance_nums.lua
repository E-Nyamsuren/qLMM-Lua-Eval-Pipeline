-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
    local sum = 0
    local str_n1 = tostring(n1)
    local str_n2 = tostring(n2)
    for i = 1, #str_n1 do
        sum = sum + math.abs(string.byte(str_n1, i) - string.byte(str_n2, i))
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