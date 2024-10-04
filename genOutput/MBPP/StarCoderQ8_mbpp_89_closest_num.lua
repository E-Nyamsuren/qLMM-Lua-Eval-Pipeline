-- Write a function to find the closest smaller number than n.
local function closest_num(N)
	local closest = 0
	for i = 1, N do
		if N % i == 0 then
			closest = i
		end
	end
	return closest
end

lu = require('luaunit')

function test_humaneval()
local candidate = closest_num
    lu.assertEquals(candidate(11), 10)
    lu.assertEquals(candidate(7), 6)
    lu.assertEquals(candidate(12), 11)
end

os.exit(lu.LuaUnit.run())