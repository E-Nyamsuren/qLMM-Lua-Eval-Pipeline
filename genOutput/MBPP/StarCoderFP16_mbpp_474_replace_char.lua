-- Write a function to replace characters in a string.
local function replace_char(str1, ch, newch)
	local str2 = ""
	for i = 1, #str1 do
		if str1:sub(i, i) == ch then
			str2 = str2 .. newch
		else
			str2 = str2 .. str1:sub(i, i)
		end
	end
	return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = replace_char
    lu.assertEquals(candidate('polygon', 'y', 'l'), 'pollgon')
    lu.assertEquals(candidate('character', 'c', 'a'), 'aharaater')
    lu.assertEquals(candidate('python', 'l', 'a'), 'python')
end

os.exit(lu.LuaUnit.run())