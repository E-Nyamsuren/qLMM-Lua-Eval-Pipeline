-- Write a luathon function to identify non-prime numbers.
local function is_not_prime(n)
	if n == 1 then
		return true
	end
	for i = 2, math.sqrt(n) do
		if n % i == 0 then
			return true
		end
	end
	return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_not_prime
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(35), true)
    lu.assertEquals(candidate(37), false)
end

os.exit(lu.LuaUnit.run())