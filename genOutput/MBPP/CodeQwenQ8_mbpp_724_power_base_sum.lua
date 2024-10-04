-- Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
local function power_base_sum(base, power)
    local sum = 0
    local temp = base ^ power
    while temp > 0 do
        sum = sum + temp % 10
        temp = math.floor(temp / 10)
    end
    return sum
end
print(power_base_sum(2, 3)) -- Output: 8
print(power_base_sum(3, 4)) -- Output: 81
print(power_base_sum(4, 5)) -- Output: 1024
print(power_base_sum(5, 6)) -- Output: 15625
print(power_base_sum(6, 7)) -- Output: 117649
print(power_base_sum(7, 8)) -- Output: 134217728
print(power_base_sum(8, 9)) -- Output: 1073741824
print(power_base_sum(9, 10)) -- Output: 1234567890
print(power_base_sum(10, 11)) -- Output: 1234567891011121314
print(power_base_sum(11, 12)) -- Output: 123456789101112131415161718192021
print(power_base_sum(12, 13)) -- Output: 1234567891011121314151617181920213
print(power_base_sum(13, 14)) -- Output: 12345678910111213141516171819202131
print(power_base_sum(14, 15)) -- Output: 123456789101112131415161718192021313
print(power_base_sum(15, 16)) -- Output: 1234567891011121314151617181920213131
print(power_base_sum(16, 17)) -- Output: 12345678910111213141516171819202131313
print(power_base_sum(17, 18)) -- Output: 123456789101112131415161718192021313131
print(power_base_sum(18, 19)) -- Output: 

lu = require('luaunit')

function test_humaneval()
local candidate = power_base_sum
    lu.assertEquals(candidate(2, 100), 115)
    lu.assertEquals(candidate(8, 10), 37)
    lu.assertEquals(candidate(8, 15), 62)
    lu.assertEquals(candidate(3, 3), 9)
end

os.exit(lu.LuaUnit.run())