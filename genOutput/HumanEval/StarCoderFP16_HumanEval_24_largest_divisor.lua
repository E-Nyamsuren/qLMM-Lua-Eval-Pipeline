-- For a given number n, find the largest number that divides n evenly, smaller than n
-- >>> largest_divisor(15)
-- 5
local function largest_divisor(n)
	local largest = 1
	for i = 2, n do
		if n % i == 0 then
			largest = i
		end
	end
	return largest
end

lu = require('luaunit')

function test_humaneval()
local candidate = largest_divisor
    lu.assertEquals(candidate(3), 1)
    lu.assertEquals(candidate(7), 1)
    lu.assertEquals(candidate(10), 5)
    lu.assertEquals(candidate(100), 50)
    lu.assertEquals(candidate(49), 7)
end

os.exit(lu.LuaUnit.run())