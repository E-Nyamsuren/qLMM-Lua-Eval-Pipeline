-- Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
local function min_Jumps(steps, d)
	local jumps = 0
	local current = 0
	while current < d do
		local farthest = 0
		for i = 1, steps do
			if current + i <= d then
				farthest = math.max(farthest, current + i)
			end
		end
		if farthest == current then
			return -1
		end
		jumps = jumps + 1
		current = farthest
	end
	return jumps
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_Jumps
    lu.assertEquals(candidate({3, 4}, 11), 3.5)
    lu.assertEquals(candidate({3, 4}, 0), 0)
    lu.assertEquals(candidate({11, 14}, 11), 1)
end

os.exit(lu.LuaUnit.run())