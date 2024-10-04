-- Write a function that matches a string that has an 'a' followed by anything, ending in 'b'.
local function text_starta_endb(text)
	local pattern = "^a.*b$"
	return string.find(text, pattern)
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_starta_endb
    lu.assertEquals(candidate('aabbbb'), true)
    lu.assertEquals(candidate('aabAbbbc'), false)
    lu.assertEquals(candidate('accddbbjjj'), false)
end

os.exit(lu.LuaUnit.run())