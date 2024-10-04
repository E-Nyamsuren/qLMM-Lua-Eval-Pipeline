-- Given a positive integer, obtain its roman numeral equivalent as a string,
-- and return it in lowercase.
-- Restrictions: 1 <= num <= 1000
-- Examples:
-- >>> int_to_mini_roman(19)
-- 'xix'
-- >>> int_to_mini_roman(152)
-- 'clii'
-- >>> int_to_mini_roman(426)
-- 'cdxxvi'
local function int_to_mini_roman(number)
    local roman_numerals = {
        M = 1000,
        CM = 900,
        D = 500,
        CD = 400,
        C = 100,
        XC = 90,
        L = 50,
        XL = 40,
        X = 10,
        IX = 9,
        V = 5,
        IV = 4,
        I = 1
    }
    local roman_string = ''
    for numeral, value in pairs(roman_numerals) do
        while number >= value do
            roman_string = roman_string .. numeral
            number = number - value
        end
    end
    return roman_string
end
print(int_to_mini_roman(19)) -- 'xix'
print(int_to_mini_roman(152)) -- 'clii'
print(int_to_mini_roman(426)) -- 'cdxxvi'
print(int_to_mini_roman(1000)) -- 'm'
print(int_to_mini_roman(58)) -- 'lviii'
print(int_to_mini_roman(4)) -- 'iv'
print(int_to_mini_roman(9)) -- 'ix'
print(int_to_mini_roman(27)) -- 'xxvii'
print(int_to_mini_roman(83)) -- 'lxxxiii'
print(int_to_mini_roman(3999)) -- 'mmmcmxcix'
print(int_to_mini_roman(2023)) -- 'mmxxiii'
print(int_

lu = require('luaunit')

function test_humaneval()
local candidate = int_to_mini_roman
    lu.assertEquals(candidate(19), 'xix')
    lu.assertEquals(candidate(152), 'clii')
    lu.assertEquals(candidate(251), 'ccli')
    lu.assertEquals(candidate(426), 'cdxxvi')
    lu.assertEquals(candidate(500), 'd')
    lu.assertEquals(candidate(1), 'i')
    lu.assertEquals(candidate(4), 'iv')
    lu.assertEquals(candidate(43), 'xliii')
    lu.assertEquals(candidate(90), 'xc')
    lu.assertEquals(candidate(94), 'xciv')
    lu.assertEquals(candidate(532), 'dxxxii')
    lu.assertEquals(candidate(900), 'cm')
    lu.assertEquals(candidate(994), 'cmxciv')
    lu.assertEquals(candidate(1000), 'm')
end

os.exit(lu.LuaUnit.run())