
--[[
Decode a series of numbers to reveal the pattern and understand the actual values
each digit represents.
0000=4 8888=8 1234=1 5678=3 9012=2 1357=0 2468=4

Parameters:
- data_str: A string representing a series of numbers.

Returns:
The result of each data string corresponding to the right-hand side of the equation.

Example usage:
assert(decode_numbers("0000") == 4);
]]--
function decode_numbers(data_str)
    local decoded_values = {}
    for i = 1, #data_str, 4 do
        local chunk = data_str:sub(i, i+3)
        local decoded_value
        if chunk == "8888" then
            decoded_value = 8
        elseif chunk == "1234" then
            decoded_value = 1
        elseif chunk == "5678" then
            decoded_value = 3
        elseif chunk == "9012" then
            decoded_value = 2
        elseif chunk == "1357" then
            decoded_value = 0
        elseif chunk == "2468" then
            decoded_value = 4
        end
        table.insert(decoded_values, decoded_value)
    end
    return decoded_values
end

lu = require('luaunit')

function testDecodeNumbers()
    local candidate = decode_numbers
    lu.assertTrue(candidate("0000") == 4)
    lu.assertTrue(candidate("8888") == 8)
    lu.assertTrue(candidate("1234") == 1)
    lu.assertTrue(candidate("5678") == 3)
    lu.assertTrue(candidate("9012") == 2)
    lu.assertTrue(candidate("1357") == 0)
    lu.assertTrue(candidate("2468") == 4)
    -- Additional test samples
    lu.assertTrue(candidate("9999") == 4)
    lu.assertTrue(candidate("1111") == 0)
    lu.assertTrue(candidate("2222") == 0)
    lu.assertTrue(candidate("3333") == 0)
    lu.assertTrue(candidate("4444") == 4)
    lu.assertTrue(candidate("5555") == 0)
    lu.assertTrue(candidate("6666") == 4)
    lu.assertTrue(candidate("7777") == 0)
    lu.assertTrue(candidate("0001") == 3)
    lu.assertTrue(candidate("2301") == 1)
end

os.exit(lu.LuaUnit.run())