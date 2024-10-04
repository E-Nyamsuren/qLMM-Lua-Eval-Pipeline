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
	local fib = {0, 1}
	local i = 2
	while #fib < n do
		local next_fib = fib[i-1] + fib[i]
		table.insert(fib, next_fib)
		i = i + 1
	end
	local prime = {2, 3}
	local i = 2
	while #prime < n do
		local next_prime = prime[i-1] + 2
		while next_prime % 2 == 0 do
			next_prime = next_prime + 1
		end
		while next_prime % 3 == 0 do
			next_prime = next_prime + 2
		end
		for j = 5, math.sqrt(next_prime), 2 do
			if next_prime % j == 0 then
				next_prime = next_prime + 2
				break
			end
		end
		table.insert(prime, next_prime)
		i = i + 1
	end
	for i = 1, #fib do
		if table.contains(prime, fib[i]) then
			return fib[i]
		end
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