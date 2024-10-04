-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
	local str2 = ""
	local j = 1
	for i = 1, #str1 do
		if str1:sub(i,i) == "a" or str1:sub(i,i) == "e" or str1:sub(i,i) == "i" or str1:sub(i,i) == "o" or str1:sub(i,i) == "u" then
			str2 = str1:sub(i,i) .. str2
		else
			str2 = str1:sub(i,i) .. str2
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