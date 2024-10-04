-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
	local i = 1
	local j = 1
	local len = string.len(s)
	while i <= len do
		if s:sub(i, i) == ch then
			j = i
		end
		i = i + 1
	end
	return s:sub(1, j - 1) .. s:sub(j + 1, len)
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_Occ
    lu.assertEquals(candidate('hello', 'l'), 'heo')
    lu.assertEquals(candidate('abcda', 'a'), 'bcd')
    lu.assertEquals(candidate('PHP', 'P'), 'H')
end

os.exit(lu.LuaUnit.run())