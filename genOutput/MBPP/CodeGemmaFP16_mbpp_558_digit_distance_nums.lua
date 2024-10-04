-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
    local sum = 0
    local n1_str = tostring(n1)
    local n2_str = tostring(n2)
    local n1_len = #n1_str
    local n2_len = #n2_str
    local min_len = math.min(n1_len, n2_len)
    local max_len = math.max(n1_len, n2_len)
    for i = 1, min_len do
        local digit1 = tonumber(n1_str:sub(i, i))
        local digit2 = tonumber(n2_str:sub(i, i))
        local diff = math.abs(digit1 - digit2)
        sum = sum + diff
    end
    for i = min_len + 1, max_len do
        local digit = tonumber(n1_str:sub(i, i))
        sum = sum + digit
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