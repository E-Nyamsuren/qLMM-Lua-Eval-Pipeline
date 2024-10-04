-- Return table of prime factors of given integer in the order from smallest to largest.
-- Each of the factors should be tableed number of times corresponding to how many times it appeares in factorization.
-- Input number should be equal to the product of all factors
-- >>> factorize(8)
-- {2, 2, 2}
-- >>> factorize(25)
-- {5, 5}
-- >>> factorize(70)
-- {2, 5, 7}
local function factorize(n)
	local primes = {}
	local i = 2
	while i * i <= n do
		if n % i == 0 then
			table.insert(primes, i)
			while n % i == 0 do
				n = n / i
			end
		end
		i = i + 1
	end
	if n > 1 then
		table.insert(primes, n)
	end
	local result = {}
	for _, p in ipairs(primes) do
		local count = 0
		while n % p == 0 do
			count = count + 1
			n = n / p
		end
		if count > 0 then
			table.insert(result, p)
			table.insert(result, count)
		end
	end
	return result
end


lu = require('luaunit')

function test_humaneval()
local candidate = factorize
    lu.assertEquals(candidate(2), {2})
    lu.assertEquals(candidate(4), {2, 2})
    lu.assertEquals(candidate(8), {2, 2, 2})
    lu.assertEquals(candidate(57), {3, 19})
    lu.assertEquals(candidate(3249), {3, 3, 19, 19})
    lu.assertEquals(candidate(185193), {3, 3, 3, 19, 19, 19})
    lu.assertEquals(candidate(20577), {3, 19, 19, 19})
    lu.assertEquals(candidate(18), {2, 3, 3})
end

os.exit(lu.LuaUnit.run())