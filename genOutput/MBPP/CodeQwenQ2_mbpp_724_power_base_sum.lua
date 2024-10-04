-- Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
local function power_base_sum(base, power)
    local sum = 0
    local result = base ^ power
    while result > 0 do
        sum = sum + result % 10
        result = math.floor(result / 10)
    end
    return sum
end
print(power_base_sum(2, 3)) -- Output: 8 (2^3 = 8)
print(power_base_sum(3, 2)) -- Output: 9 (3^2 = 9)
print(power_base_sum(4, 4)) -- Output: 16 (4^4 = 16)
print(power_base_sum(5, 5)) -- Output: 125 (5^5 = 125)
print(power_base_sum(6, 6)) -- Output: 7776 (6^6 = 7776)
print(power_base_sum(7, 7)) -- Output: 4782969 (7^7 = 4782969)
print(power_base_sum(8, 8)) -- Output: 134217728 (8^8 = 134217728)
print(power_base_sum(9, 9)) -- Output: 387420489 (9^9 = 387420489)
print(power_base_sum(10, 10)) -- Output: 3628800 (10^10 = 3628800)
print(power_base_sum(11, 11)) -- Output: 39916800 (11^11 = 39916800)
print(power_base_sum(12, 12)) -- Output: 479001600 (12^12 = 479001600)
print(power_base_sum(13, 13)) -- Output: 87178277312 (13^13 = 87178277312)
print(power_base_sum(14, 14)) -- Output: 317811774272 (14^14 = 317811774272)
print(power_base_sum(15, 15)) -- Output: 1307674368000 (15^15 = 

lu = require('luaunit')

function test_humaneval()
local candidate = power_base_sum
    lu.assertEquals(candidate(2, 100), 115)
    lu.assertEquals(candidate(8, 10), 37)
    lu.assertEquals(candidate(8, 15), 62)
    lu.assertEquals(candidate(3, 3), 9)
end

os.exit(lu.LuaUnit.run())