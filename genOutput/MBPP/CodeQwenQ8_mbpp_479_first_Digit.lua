-- Write a luathon function to find the first digit of a given number.
local function first_Digit(n)
    -- Convert the number to a string
    local str = tostring(n)
    -- Get the first character of the string
    local first_char = str:sub(1, 1)
    -- Convert the first character back to a number
    local first_digit = tonumber(first_char)
    -- Return the first digit
    return first_digit
end

lu = require('luaunit')

function test_humaneval()
local candidate = first_Digit
    lu.assertEquals(candidate(123), 1)
    lu.assertEquals(candidate(456), 4)
    lu.assertEquals(candidate(12), 1)
end

os.exit(lu.LuaUnit.run())