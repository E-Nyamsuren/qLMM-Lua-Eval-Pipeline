-- Write a luathon function to find the minimum number of rotations (greater than 0) required to get the same string.
local function find_Rotations(str)
	local count = 0
	local n = #str
	local temp = str
	while true do
		temp = string.sub(temp, 2) .. string.sub(temp, 1, 1)
		count = count + 1
		if temp == str then
			return count
		end
	end
end


lu = require('luaunit')

function test_humaneval()
local candidate = find_Rotations
    lu.assertEquals(candidate('aaaa'), 1)
    lu.assertEquals(candidate('ab'), 2)
    lu.assertEquals(candidate('abc'), 3)
end

os.exit(lu.LuaUnit.run())