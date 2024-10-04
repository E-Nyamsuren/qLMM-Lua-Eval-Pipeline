-- Write a luathon function to find the highest power of 2 that is less than or equal to n.
local function highest_Power_of_2(n)
	local count = 0
	while n > 1 do
		n = n / 2
		count = count + 1
	end
	return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = highest_Power_of_2
    lu.assertEquals(candidate(10), 8)
    lu.assertEquals(candidate(19), 16)
    lu.assertEquals(candidate(32), 32)
end

os.exit(lu.LuaUnit.run())