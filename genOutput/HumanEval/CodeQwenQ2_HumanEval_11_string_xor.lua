-- Input are two strings a and b consisting only of 1s and 0s.
-- Perform binary XOR on these inputs and return result also as a string.
-- >>> string_xor('010', '110')
-- '100'
local function string_xor(a, b)
    local result = ""
    for i = 1, #a do
        if a:sub(i, i) == b:sub(i, i) then
            result = result .. "0"
        else
            result = result .. "1"
        end
    end
    return result
end
print(string_xor('010', '110'))  -- Expected output: '100'
print(string_xor('111', '000'))  -- Expected output: '111'
print(string_xor('101', '101'))  -- Expected output: '000'
print(string_xor('000', '111'))  -- Expected output: '111'
print(string_xor('011', '100'))  -- Expected output: '111'
print(string_xor('100', '011'))  -- Expected output: '111'
print(string_xor('110', '100'))  -- Expected output: '010'
print(string_xor('001', '010'))  -- Expected output: '011'
print(string_xor('111', '111'))  -- Expected output: '000'
print(string_xor('000', '000'))  -- Expected output: '000'
print(string_xor('101', '010'))  -- Expected output: '111'
print(string_xor('010', '001'))  -- Expected output: '011'
print(string_xor('001', '011'))  -- Expected output: '010'
print(string_xor('011', '001'))  -- Expected output: '100'
print(string_xor('100', '011'))  -- Expected output: '001'
print(string_xor('110', '001'))  -- Expected output: '101'
print(string_xor('001', '110'))  -- Expected output: '101'


lu = require('luaunit')

function test_humaneval()
local candidate = string_xor
    lu.assertEquals(candidate('111000', '101010'), '010010')
    lu.assertEquals(candidate('1', '1'), '0')
    lu.assertEquals(candidate('0101', '0000'), '0101')
end

os.exit(lu.LuaUnit.run())