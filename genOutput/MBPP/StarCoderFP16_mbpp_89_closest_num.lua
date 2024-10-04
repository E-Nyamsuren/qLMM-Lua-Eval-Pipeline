-- Write a function to find the closest smaller number than n.
local function closest_num(N)
	local n = 0
	while true do
		n = n + 1
		if n > N then
			return n - 1
		end
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = closest_num
    lu.assertEquals(candidate(11), 10)
    lu.assertEquals(candidate(7), 6)
    lu.assertEquals(candidate(12), 11)
end

os.exit(lu.LuaUnit.run())