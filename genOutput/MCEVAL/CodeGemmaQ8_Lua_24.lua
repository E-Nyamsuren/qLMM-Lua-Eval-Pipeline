
--[[
Reads an integer and a character, then returns them as a formatted string separated by a comma.
Parameters:
- integer_value (number): The input integer.
- char_value (string): The input character.

Returns:
- string: A string containing the integer and character separated by a comma.

Example usage:
local result = process_integer_and_char(234,'H')
print(result) -- Output: 234,H
]]
function process_integer_and_char(integer_value, char_value)
    return integer_value .. "," .. char_value
end


lu = require('luaunit')

function testProcessIntegerAndChar()
    local candidate = process_integer_and_char
    lu.assertTrue(candidate(234, 'H') == "234,H")
    lu.assertTrue(candidate(123, 'A') == "123,A")
    lu.assertTrue(candidate(0, 'Z') == "0,Z")

    -- Additional tests can be added here with different input values.
end

-- Run the tests to verify that the function works as intended.
os.exit(lu.LuaUnit.run())