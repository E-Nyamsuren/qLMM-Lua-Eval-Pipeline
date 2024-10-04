-- prime_fib returns n-th number that is a Fibonacci number and it's also prime.
-- >>> prime_fib(1)
-- 2
-- >>> prime_fib(2)
-- 3
-- >>> prime_fib(3)
-- 5
-- >>> prime_fib(4)
-- 13
-- >>> prime_fib(5)
-- 89
local function prime_fib(n)
	local fib = {1, 1}
	local prime = {2, 3}
	local fib_count = 2
	local prime_count = 2
	while fib_count < n do
		fib_count = fib_count + 1
		table.insert(fib, fib[fib_count-1] + fib[fib_count-2])
	end
	while prime_count < n do
		prime_count = prime_count + 1
		table.insert(prime, next_prime(prime[prime_count-1]))
	end
	while fib_count ~= prime_count do
		if fib[fib_count] == prime[prime_count] then
			return fib[fib_count]
		end
		fib_count = fib_count + 1
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = prime_fib
    lu.assertEquals(candidate(1), 2)
    lu.assertEquals(candidate(2), 3)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 13)
    lu.assertEquals(candidate(5), 89)
    lu.assertEquals(candidate(6), 233)
    lu.assertEquals(candidate(7), 1597)
    lu.assertEquals(candidate(8), 28657)
    lu.assertEquals(candidate(9), 514229)
    lu.assertEquals(candidate(10), 433494437)
end

os.exit(lu.LuaUnit.run())