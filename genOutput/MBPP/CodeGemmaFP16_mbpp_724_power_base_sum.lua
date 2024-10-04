-- Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
local function power_base_sum(base, power)
    local sum = 0
    local base_str = tostring(base)
    local power_str = tostring(power)
    local base_len = #base_str
    local power_len = #power_str
    local base_pow = 1
    local power_pow = 1
    for i = 1, base_len do
        base_pow = base_pow * base
    end
    for i = 1, power_len do
        power_pow = power_pow * power
    end
    for i = 1, base_len do
        sum = sum + base_str:sub(i, i):tonumber() ^ base_pow
    end
    for i = 1, power_len do
        sum = sum + power_str:sub(i, i):tonumber() ^ power_pow
    end
    return sum
end
print(power_base_sum(2, 3))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = power_base_sum
    lu.assertEquals(candidate(2, 100), 115)
    lu.assertEquals(candidate(8, 10), 37)
    lu.assertEquals(candidate(8, 15), 62)
    lu.assertEquals(candidate(3, 3), 9)
end

os.exit(lu.LuaUnit.run())