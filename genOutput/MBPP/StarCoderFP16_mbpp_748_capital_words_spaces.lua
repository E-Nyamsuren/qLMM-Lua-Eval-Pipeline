-- Write a function to put spaces between words starting with capital letters in a given string.
local function capital_words_spaces(str1)
	local str2 = ""
	for i = 1, #str1 do
		if str1:sub(i, i) == str1:sub(i, i):upper() then
			str2 = str2 .. " " .. str1:sub(i, i)
		else
			str2 = str2 .. str1:sub(i, i)
		end
	end
	return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = capital_words_spaces
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('PythonProgrammingExamples'), 'Python Programming Examples')
    lu.assertEquals(candidate('GetReadyToBeCodingFreak'), 'Get Ready To Be Coding Freak')
end

os.exit(lu.LuaUnit.run())