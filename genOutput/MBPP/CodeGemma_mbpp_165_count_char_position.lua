-- Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
local function count_char_position(str1)
  local str = str1:lower()
  local result = {}
  for i = 1, #str do
    local char = str:sub(i, i)
    if char:match("%a") then
      result[char] = (result[char] or 0) + 1
    end
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_char_position
    lu.assertEquals(candidate('xbcefg'), 2)
    lu.assertEquals(candidate('ABcED'), 3)
    lu.assertEquals(candidate('AbgdeF'), 5)
end

os.exit(lu.LuaUnit.run())