-- Input are two strings a and b consisting only of 1s and 0s.
-- Perform binary XOR on these inputs and return result also as a string.
-- >>> string_xor('010', '110')
-- '100'
local function string_xor(a, b)
    local result = ""
    for i = 1, #a do
        result = result .. (a:sub(i, i) == b:sub(i, i) and "0" or "1")
    end
    return result
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = string_xor
    lu.assertEquals(candidate('111000', '101010'), '010010')
    lu.assertEquals(candidate('1', '1'), '0')
    lu.assertEquals(candidate('0101', '0000'), '0101')
end

os.exit(lu.LuaUnit.run())