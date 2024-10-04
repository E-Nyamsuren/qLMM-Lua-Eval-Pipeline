-- Return the largest prime factor of n. Assume n > 1 and is not a prime.
-- >>> largest_prime_factor(13195)
-- 29
-- >>> largest_prime_factor(2048)
-- 2
local function largest_prime_factor(n)
	local largest = 1
	for i = 2, math.floor(math.sqrt(n)) do
		if n % i == 0 then
			largest = i
			n = n / i
			while n % i == 0 do
				n = n / i
			end
		end
	end
	if n > largest then
		largest = n
	end
	return largest
end

lu = require('luaunit')

function test_humaneval()
local candidate = largest_prime_factor
    lu.assertEquals(candidate(15), 5)
    lu.assertEquals(candidate(27), 3)
    lu.assertEquals(candidate(63), 7)
    lu.assertEquals(candidate(330), 11)
    lu.assertEquals(candidate(13195), 29)
end

os.exit(lu.LuaUnit.run())