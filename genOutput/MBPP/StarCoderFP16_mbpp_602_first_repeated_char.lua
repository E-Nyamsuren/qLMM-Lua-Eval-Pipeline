-- Write a luathon function to find the first repeated character in a given string.
local function first_repeated_char(str1)
	local char_table = {}
	for i = 1, #str1 do
		if char_table[str1:sub(i, i)] == nil then
			char_table[str1:sub(i, i)] = 1
		else
			return str1:sub(i, i)
		end
	end
	return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = first_repeated_char
    lu.assertEquals(candidate('abcabc'), 'a')
    lu.assertEquals(candidate('abc'), None)
    lu.assertEquals(candidate('123123'), '1')
end

os.exit(lu.LuaUnit.run())