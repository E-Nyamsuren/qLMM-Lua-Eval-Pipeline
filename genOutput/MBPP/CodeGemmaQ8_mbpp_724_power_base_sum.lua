-- Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
local function power_base_sum(base, power)
    local sum = 0
    for i = 1, base do
        sum = sum + i^power
    end
    return sum
end
print(power_base_sum(10, 2))
print(power_base_sum(10, 3))
print(power_base_sum(10, 4))
print(power_base_sum(10, 5))
print(power_base_sum(10, 6))
print(power_base_sum(10, 7))
print(power_base_sum(10, 8))
print(power_base_sum(10, 9))
print(power_base_sum(10, 10))
print(power_base_sum(10, 11))
print(power_base_sum(10, 12))
print(power_base_sum(10, 13))
print(power_base_sum(10, 14))
print(power_base_sum(10, 15))
print(power_base_sum(10, 16))
print(power_base_sum(10, 17))
print(power_base_sum(10, 18))
print(power_base_sum(10, 19))
print(power_base_sum(10, 20))
print(power_base_sum(10, 21))
print(power_base_sum(10, 22))
print(power_base_sum(10, 23))
print(power_base_sum(10, 24))
print(power_base_sum(10, 25))
print(power_base_sum(10, 26))
print(power_base_sum(10, 27))
print(power_base_sum(10, 28))
print(power_base_sum(10, 

lu = require('luaunit')

function test_humaneval()
local candidate = power_base_sum
    lu.assertEquals(candidate(2, 100), 115)
    lu.assertEquals(candidate(8, 10), 37)
    lu.assertEquals(candidate(8, 15), 62)
    lu.assertEquals(candidate(3, 3), 9)
end

os.exit(lu.LuaUnit.run())