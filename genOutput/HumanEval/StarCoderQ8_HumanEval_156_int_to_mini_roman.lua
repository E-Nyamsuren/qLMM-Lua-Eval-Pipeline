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
		['I'] = 1,
		['V'] = 5,
		['X'] = 10,
		['L'] = 50,
		['C'] = 100,
		['D'] = 500,
		['M'] = 1000
	}
	local result = ''
	for i = 1, 4 do
		local digit = math.floor(number / 10^(3-i))
		number = number % 10^(3-i)
		if digit == 9 then
			result = result .. 'ix'
		elseif digit == 4 then
			result = result .. 'iv'
		elseif digit >= 5 then
			result = result .. 'v'
			digit = digit - 5
			for j = 1, digit do
				result = result .. 'i'
			end
		elseif digit == 3 then
			result = result .. 'iii'
		elseif digit == 2 then
			result = result .. 'ii'
		elseif digit == 1 then
			result = result .. 'i'
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