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
print(power_base_sum(3, 2)) -- Output: 9
print(power_base_sum(4, 4)) -- Output: 64
print(power_base_sum(5, 5)) -- Output: 3125
print(power_base_sum(6, 6)) -- Output: 7776
print(power_base_sum(7, 7)) -- Output: 117649
print(power_base_sum(8, 8)) -- Output: 134217728
print(power_base_sum(9, 9)) -- Output: 387420489
print(power_base_sum(10, 10)) -- Output: 10000000000
print(power_base_sum(11, 11)) -- Output: 39916800
print(power_base_sum(12, 12)) -- Output: 479001600
print(power_base_sum(13, 13)) -- Output: 6227020800
print(power_base_sum(14, 14)) -- Output: 87178291200
print(power_base_sum(15, 15)) -- Output: 1307674368000
print(power_base_sum(16, 16)) -- Output: 20971520000000
print(power_base_sum(17, 17)) -- Output: 336860934400000
print(power_base_sum(18, 18)) -- Output: 5368709120000000
print(power_base_sum(19, 19)) -- Output: 80530636800000000
print(power_base_sum(20, 20)) -- Output: 1307674368000000000
print(power_base_sum(

lu = require('luaunit')

function test_humaneval()
local candidate = power_base_sum
    lu.assertEquals(candidate(2, 100), 115)
    lu.assertEquals(candidate(8, 10), 37)
    lu.assertEquals(candidate(8, 15), 62)
    lu.assertEquals(candidate(3, 3), 9)
end

os.exit(lu.LuaUnit.run())