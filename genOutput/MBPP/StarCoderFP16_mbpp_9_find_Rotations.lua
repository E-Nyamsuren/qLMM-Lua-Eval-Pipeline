-- Write a luathon function to find the minimum number of rotations (greater than 0) required to get the same string.
local function find_Rotations(str)
	local min_rotations = 0
	local str_len = string.len(str)
	local str_rev = string.reverse(str)
	local str_rev_len = string.len(str_rev)
	local i = 1
	while i <= str_len do
		if str_rev_len == i then
			break
		end
		if str_rev:sub(i, i) ~= str:sub(str_len - i + 1, str_len - i + 1) then
			min_rotations = min_rotations + 1
		end
		i = i + 1
	end
	return min_rotations
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Rotations
    lu.assertEquals(candidate('aaaa'), 1)
    lu.assertEquals(candidate('ab'), 2)
    lu.assertEquals(candidate('abc'), 3)
end

os.exit(lu.LuaUnit.run())