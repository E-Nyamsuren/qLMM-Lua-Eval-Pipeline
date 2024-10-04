-- Circular shift the digits of the integer x, shift the digits right by shift
-- and return the result as a string.
-- If shift > number of digits, return digits reversed.
-- >>> circular_shift(12, 1)
-- '21'
-- >>> circular_shift(12, 2)
-- '12'
local function circular_shift(x, shift)
    local str_x = tostring(x)
    local len_x = #str_x
    shift = shift % len_x
    if shift == 0 then
        return str_x
    else
        return str_x:sub(-shift) .. str_x:sub(1, len_x - shift)
    end
end
print(circular_shift(12, 1)) -- 21
print(circular_shift(12, 2)) -- 12
print(circular_shift(123, 1)) -- 312
print(circular_shift(123, 2)) -- 231
print(circular_shift(123, 3)) -- 123
print(circular_shift(123, 4)) -- 321
print(circular_shift(123, 5)) -- 123
print(circular_shift(123, 6)) -- 321
print(circular_shift(123, 7)) -- 123
print(circular_shift(123, 8)) -- 321
print(circular_shift(123, 9)) -- 123
print(circular_shift(123, 10)) -- 321
print(circular_shift(123, 11)) -- 123
print(circular_shift(123, 12)) -- 321
print(circular_shift(123, 13)) -- 123
print(circular_shift(123, 14)) -- 321
print(circular_shift(123, 15)) -- 123
print(circular_shift(123, 16)) -- 321
print(circular_shift(123, 17)) -- 123
print(circular_shift(123, 18)) -- 321
print(circular_shift(123, 19)) -- 123
print(circular_shift(123, 

lu = require('luaunit')

function test_humaneval()
local candidate = circular_shift
    lu.assertEquals(candidate(100, 2), '001')
    lu.assertEquals(candidate(12, 2), '12')
    lu.assertEquals(candidate(97, 8), '79')
    lu.assertEquals(candidate(12, 1), '21')
    lu.assertEquals(candidate(11, 101), '11')
end

os.exit(lu.LuaUnit.run())