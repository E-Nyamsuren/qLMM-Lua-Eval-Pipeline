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
	local digits = {1, 5, 10, 50, 100, 500, 1000}
	local symbols = {'i', 'v', 'x', 'l', 'c', 'd', 'm'}
	local result = ''
	for i = 1, #digits do
		local count = math.floor(number / digits[i])
		number = number % digits[i]
		if count == 9 then
			result = result .. symbols[i] .. symbols[i+1]
		elseif count >= 5 then
			result = result .. symbols[i+1] .. symbols[i]
			count = count - 5
		elseif count == 4 then
			result = result .. symbols[i] .. symbols[i+2]
		elseif count >= 1 then
			result = result .. symbols[i]
			count = count - 1
		end
		for _ = 1, count do
			result = result .. symbols[i]
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