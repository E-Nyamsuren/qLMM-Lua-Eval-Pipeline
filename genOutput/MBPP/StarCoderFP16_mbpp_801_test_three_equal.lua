-- Write a luathon function to count the number of equal numbers from three given integers.
local function test_three_equal(x, y, z)
	local count = 0
	if x == y then
		count = count + 1
	end
	if x == z then
		count = count + 1
	end
	if y == z then
		count = count + 1
	end
	return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = test_three_equal
    lu.assertEquals(candidate(1, 1, 1), 3)
    lu.assertEquals(candidate(-1, -2, -3), 0)
    lu.assertEquals(candidate(1, 2, 2), 2)
end

os.exit(lu.LuaUnit.run())