-- Write a luathon function to check whether the two numbers differ at one bit position only or not.
local function differ_At_One_Bit_Pos(a, b)
	local count = 0
	local a_bin = string.format("%032d", a)
	local b_bin = string.format("%032d", b)
	for i = 1, 32 do
		if a_bin:sub(i, i) ~= b_bin:sub(i, i) then
			count = count + 1
		end
	end
	return count == 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = differ_At_One_Bit_Pos
    lu.assertEquals(candidate(13, 9), true)
    lu.assertEquals(candidate(15, 8), false)
    lu.assertEquals(candidate(2, 4), false)
    lu.assertEquals(candidate(2, 3), true)
    lu.assertEquals(candidate(5, 1), true)
    lu.assertEquals(candidate(1, 5), true)
end

os.exit(lu.LuaUnit.run())