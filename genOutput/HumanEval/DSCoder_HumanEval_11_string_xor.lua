-- Input are two strings a and b consisting only of 1s and 0s.
-- Perform binary XOR on these inputs and return result also as a string.
-- >>> string_xor('010', '110')
-- '100'
local function string_xor(a, b)
  if #a ~= #b then
    error("Input strings must be of the same length")
  end

lu = require('luaunit')

function test_humaneval()
local candidate = string_xor
    lu.assertEquals(candidate('111000', '101010'), '010010')
    lu.assertEquals(candidate('1', '1'), '0')
    lu.assertEquals(candidate('0101', '0000'), '0101')
end

os.exit(lu.LuaUnit.run())