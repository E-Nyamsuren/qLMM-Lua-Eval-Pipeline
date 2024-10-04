-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
	local first_index = string.find(s, ch)
	local last_index = string.find(s, ch, first_index + 1)
	if first_index and last_index then
		return string.sub(s, 1, first_index - 1) .. string.sub(s, last_index + 1)
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