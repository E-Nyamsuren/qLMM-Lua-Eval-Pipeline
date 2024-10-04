-- Write a luathon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
local function get_Char(strr)
	local str = strr:gsub("%s+", "")
	local char = ""
	for i = 1, #str do
		char = char .. string.char(string.byte(str:sub(i, i)) + 1)
	end
	return char
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_Char
    lu.assertEquals(candidate('abc'), 'f')
    lu.assertEquals(candidate('gfg'), 't')
    lu.assertEquals(candidate('ab'), 'c')
end

os.exit(lu.LuaUnit.run())