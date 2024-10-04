-- Write a function that matches a word containing 'z'.
local function text_match_wordz(text)
	local wordz = {}
	for word in string.gmatch(text, "%w+") do
		if string.find(word, "z") then
			table.insert(wordz, word)
		end
	end
	return wordz
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz
    lu.assertEquals(candidate('pythonz.'), true)
    lu.assertEquals(candidate('xyz.'), true)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())