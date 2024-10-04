-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
    local sum = 0
    local n1_str = tostring(n1)
    local n2_str = tostring(n2)
    local n1_len = #n1_str
    local n2_len = #n2_str
    local n1_digit, n2_digit
    local i = 1
    while i <= n1_len or i <= n2_len do
        if i <= n1_len then
            n1_digit = tonumber(n1_str:sub(i, i))
        else
            n1_digit = 0
        end
        if i <= n2_len then
            n2_digit = tonumber(n2_str:sub(i, i))
        else
            n2_digit = 0
        end
        sum = sum + math.abs(n1_digit - n2_digit)
        i = i + 1
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