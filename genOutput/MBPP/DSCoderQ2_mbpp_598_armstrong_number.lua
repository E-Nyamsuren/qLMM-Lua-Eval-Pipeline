-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
    local original_number, remainder, result = number, 0, 0
    local order = number_of_digits(number)
    while number ~= 0 do
        remainder = number % 10
        result = result + (remainder ^ order)
        number = math.floor(number / 10)
    end
    return result == original_number
end

lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())