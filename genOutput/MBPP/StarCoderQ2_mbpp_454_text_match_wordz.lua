-- Write a function that matches a word containing 'z'.
local function text_match_wordz(text)
	local pattern = "%w+z"
	local matches = {}
	for word in string.gmatch(text, pattern) do
		table.insert(matches, word)
	end
	return matches
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz
    lu.assertEquals(candidate('pythonz.'), true)
    lu.assertEquals(candidate('xyz.'), true)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())