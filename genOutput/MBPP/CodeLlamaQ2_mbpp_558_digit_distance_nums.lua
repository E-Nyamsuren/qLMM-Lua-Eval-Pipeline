-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
    local sum = 0
    local n1_digits = {}
    local n2_digits = {}
    for i = 1, 100 do
        n1_digits[i] = 0
        n2_digits[i] = 0
    end
    local n1_digits_count = 0
    local n2_digits_count = 0
    while n1 > 0 or n2 > 0 do
        if n1 > 0 then
            n1_digits[n1 % 10] = n1_digits[n1 % 10] + 1
            n1_digits_count = n1_digits_count + 1
        end
        if n2 > 0 then
            n2_digits[n2 % 10] = n2_digits[n2 % 10] + 1
            n2_digits_count = n2_digits_count + 1
        end
        n1 = math.floor(n1 / 10)
        n2 = math.floor(n2 / 10)
    end
    for i = 1, 10 do
        if n1_digits[i] > 0 and n2_digits[i] > 0 then
            sum = sum + math.abs(n1_digits[i] - n2_digits[i])
        end
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