-- Write a function to reverse words seperated by spaces in a given string.
local function reverse_words(s)
	local words = {}
	local word = ""
	for i = 1, #s do
		if s:sub(i, i) == " " then
			table.insert(words, word)
			word = ""
		else
			word = word .. s:sub(i, i)
		end
	end
	table.insert(words, word)
	local reversed_s = ""
	for i = #words, 1, -1 do
		reversed_s = reversed_s .. words[i] .. " "
	end
	return reversed_s:sub(1, -2)
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_words
    lu.assertEquals(candidate('python program'), 'program python')
    lu.assertEquals(candidate('java language'), 'language java')
    lu.assertEquals(candidate('indian man'), 'man indian')
end

os.exit(lu.LuaUnit.run())