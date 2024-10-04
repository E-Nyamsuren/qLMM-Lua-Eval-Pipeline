-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
    local number_string = tostring(number)
    local length = string.len(number_string)
    local sum = 0
    for i = 1, length do
        local digit = string.sub(number_string, i, i)
        local power = (length - i + 1)
        local digit_power = tonumber(digit) ^ power
        sum = sum + digit_power
    end
    return number == sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())