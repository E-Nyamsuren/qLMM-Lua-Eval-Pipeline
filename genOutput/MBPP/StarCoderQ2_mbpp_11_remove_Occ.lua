-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
	local first = string.find(s, ch)
	local last = string.find(s, ch, first+1)
	local result = string.sub(s, 1, first-1) .. string.sub(s, last+1, -1)
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_Occ
    lu.assertEquals(candidate('hello', 'l'), 'heo')
    lu.assertEquals(candidate('abcda', 'a'), 'bcd')
    lu.assertEquals(candidate('PHP', 'P'), 'H')
end

os.exit(lu.LuaUnit.run())