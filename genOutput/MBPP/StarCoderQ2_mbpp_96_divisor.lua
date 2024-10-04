-- Write a luathon function to find the number of divisors of a given integer.
local function divisor(n)
	local count = 0
	for i = 1, n do
		if n % i == 0 then
			count = count + 1
		end
	end
	return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = divisor
    lu.assertEquals(candidate(15), 4)
    lu.assertEquals(candidate(12), 6)
    lu.assertEquals(candidate(9), 3)
end

os.exit(lu.LuaUnit.run())