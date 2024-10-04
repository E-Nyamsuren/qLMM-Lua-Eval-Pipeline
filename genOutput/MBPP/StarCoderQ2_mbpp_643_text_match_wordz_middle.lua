-- Write a function that checks if a strings contains 'z', except at the start and end of the word.
local function text_match_wordz_middle(text)
	local wordz = false
	local start = 1
	local end_ = #text
	for i = 1, #text do
		if text:sub(i, i) == 'z' and i ~= 1 and i ~= end_ then
			wordz = true
			break
		end
	end
	return wordz
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz_middle
    lu.assertEquals(candidate('pythonzabc.'), true)
    lu.assertEquals(candidate('zxyabc.'), false)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())