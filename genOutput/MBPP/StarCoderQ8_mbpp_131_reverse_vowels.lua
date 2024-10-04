-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
	local vowels = {'a', 'e', 'i', 'o', 'u'}
	local str2 = ""
	local str1_len = #str1
	for i = 1, str1_len do
		local char = string.lower(str1:sub(i, i))
		if vowels[char] then
			str2 = char .. str2
		else
			str2 = str1:sub(i, i) .. str2
		end
	end
	return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())