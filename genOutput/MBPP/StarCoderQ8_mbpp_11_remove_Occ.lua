-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
	local first = s:find(ch)
	local last = s:reverse():find(ch)
	if first and last then
		return s:sub(1, first - 1) .. s:sub(last + 1, -1)
	else
		return s
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_Occ
    lu.assertEquals(candidate('hello', 'l'), 'heo')
    lu.assertEquals(candidate('abcda', 'a'), 'bcd')
    lu.assertEquals(candidate('PHP', 'P'), 'H')
end

os.exit(lu.LuaUnit.run())