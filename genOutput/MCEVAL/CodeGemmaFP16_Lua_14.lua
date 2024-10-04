
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
  local result = 0
  local data = data_str:gsub("%d", function(num)
    result = result * 10 + tonumber(num)
    return ""
  end)
  return result
end
<|file_separator|>

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