-- Input are two strings a and b consisting only of 1s and 0s.
-- Perform binary XOR on these inputs and return result also as a string.
-- >>> string_xor('010', '110')
-- '100'
local function string_xor(a, b)
    local result = ""
    for i = 1, #a do
        if a:sub(i,i) == b:sub(i,i) then
            result = result .. "0"
        else
            result = result .. "1"
        end
    end
    return result
end
print(string_xor('010', '110')) -- Expected output: '100'
print(string_xor('101010', '010101')) -- Expected output: '111111'
print(string_xor('1111', '0000')) -- Expected output: '1111'
print(string_xor('0000', '1111')) -- Expected output: '1111'
print(string_xor('1111', '1111')) -- Expected output: '0000'
print(string_xor('0000', '0000')) -- Expected output: '0000'
print(string_xor('1010', '1010')) -- Expected output: '0000'
print(string_xor('0101', '0101')) -- Expected output: '0000'
print(string_xor('1110', '1010')) -- Expected output: '0100'
print(string_xor('1001', '1100')) -- Expected output: '0101'
print(string_xor('0110', '1001')) -- Expected output: '1111'
print(string_xor('1100', '0110')) -- Expected output: '1111'
print(string_xor('0011', '1100')) -- Expected output: '1111'
print(string_xor('1000', '0011')) -- Expected output: '1111'
print(string_xor('1111', '0011')) -- Expected output: '1100'
print(string_xor('0011', '1111')) -- Expected

lu = require('luaunit')

function test_humaneval()
local candidate = string_xor
    lu.assertEquals(candidate('111000', '101010'), '010010')
    lu.assertEquals(candidate('1', '1'), '0')
    lu.assertEquals(candidate('0101', '0000'), '0101')
end

os.exit(lu.LuaUnit.run())