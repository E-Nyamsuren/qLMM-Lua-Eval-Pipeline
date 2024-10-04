-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
    local sum = 0
    local str1 = tostring(n1)
    local str2 = tostring(n2)
    local len1 = #str1
    local len2 = #str2
    local max_len = math.max(len1, len2)
    for i = 1, max_len do
        local digit1 = tonumber(str1:sub(i, i)) or 0
        local digit2 = tonumber(str2:sub(i, i)) or 0
        sum = sum + math.abs(digit1 - digit2)
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