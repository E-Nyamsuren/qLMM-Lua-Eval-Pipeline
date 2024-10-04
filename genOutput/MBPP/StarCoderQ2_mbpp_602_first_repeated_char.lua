-- Write a luathon function to find the first repeated character in a given string.
local function first_repeated_char(str1)
	local count = {}
	for i = 1, #str1 do
		local char = str1:sub(i, i)
		if count[char] then
			return char
		end
		count[char] = true
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