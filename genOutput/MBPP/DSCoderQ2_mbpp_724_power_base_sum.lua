-- Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
local function power_base_sum(base, power)
    local sum = 0
    local product = 1
    for i = 1, power do
        product = product * base
    end
    while product > 0 do
        digit = product % 10
        sum = sum + digit
        product = math.floor(product / 10)
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = power_base_sum
    lu.assertEquals(candidate(2, 100), 115)
    lu.assertEquals(candidate(8, 10), 37)
    lu.assertEquals(candidate(8, 15), 62)
    lu.assertEquals(candidate(3, 3), 9)
end

os.exit(lu.LuaUnit.run())