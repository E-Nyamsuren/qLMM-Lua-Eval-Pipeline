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
    local roman = {
        {1000, 'm'},
        {900, 'cm'},
        {500, 'd'},
        {400, 'cd'},
        {100, 'c'},
        {90, 'xc'},
        {50, 'l'},
        {40, 'xl'},
        {10, 'x'},
        {9, 'ix'},
        {5, 'v'},
        {4, 'iv'},
        {1, 'i'}
    }
    local result = ''
    for i, val in ipairs(roman) do
        while number >= val[1] do
            number = number - val[1]
            result = result .. val[2]
        end
    end
    return result
end

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