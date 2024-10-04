-- Write a function that matches a string that has an 'a' followed by anything, ending in 'b'.
local function text_starta_endb(text)
	local a = string.find(text, "a")
	local b = string.find(text, "b")
	if a and b and b > a then
		return true
	end
	return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_starta_endb
    lu.assertEquals(candidate('aabbbb'), true)
    lu.assertEquals(candidate('aabAbbbc'), false)
    lu.assertEquals(candidate('accddbbjjj'), false)
end

os.exit(lu.LuaUnit.run())