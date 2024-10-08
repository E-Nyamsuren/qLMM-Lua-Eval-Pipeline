-- remove_vowels is a function that takes string and returns string without vowels.
-- >>> remove_vowels('')
-- ''
-- >>> remove_vowels('abcdef')
-- 'bcdf'
-- >>> remove_vowels('aaaaa')
-- ''
-- >>> remove_vowels('aaBAA')
-- 'B'
-- >>> remove_vowels('zbcd')
-- 'zbcd'
local function remove_vowels(text)
	local vowels = {'a', 'e', 'i', 'o', 'u'}
	local new_text = ''
	for i = 1, #text do
		local char = text:sub(i, i)
		if not vowels[char] then
			new_text = new_text .. char
		end
	end
	return new_text
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_vowels
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('abcdef\nghijklm'), 'bcdf\nghjklm')
    lu.assertEquals(candidate('fedcba'), 'fdcb')
    lu.assertEquals(candidate('eeeee'), '')
    lu.assertEquals(candidate('acBAA'), 'cB')
    lu.assertEquals(candidate('EcBOO'), 'cB')
    lu.assertEquals(candidate('ybcd'), 'ybcd')
end

os.exit(lu.LuaUnit.run())