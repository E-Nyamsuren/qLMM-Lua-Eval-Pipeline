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
		['1'] = 'i',
		['2'] = 'ii',
		['3'] = 'iii',
		['4'] = 'iv',
		['5'] = 'v',
		['6'] = 'vi',
		['7'] = 'vii',
		['8'] = 'viii',
		['9'] = 'ix',
		['10'] = 'x',
		['20'] = 'xx',
		['30'] = 'xxx',
		['40'] = 'xl',
		['50'] = 'l',
		['60'] = 'lix',
		['70'] = 'lxx',
		['80'] = 'lxxx',
		['90'] = 'xc',
		['100'] = 'c',
		['200'] = 'cc',
		['300'] = 'ccc',
		['400'] = 'cd',
		['500'] = 'd',
		['600'] = 'dc',
		['700'] = 'dcc',
		['800'] = 'dccc',
		['900'] = 'cm',
		['1000'] = 'm',
		['2000'] = 'mm',
		['3000'] = 'mmm',
		['4000'] = 'mmmm',
		['5000'] = 'mmmmm',
		['6000'] = 'mmmmmm',
		['7000'] = 'mmmmmmm',
		['8000'] = 'mmmm

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