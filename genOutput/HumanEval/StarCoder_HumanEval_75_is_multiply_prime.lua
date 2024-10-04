-- Write a function that returns true if the given number is the multiplication of 3 prime numbers
-- and false otherwise.
-- Knowing that (a) is less then 100. 
-- Example:
-- >>> is_multiply_prime(30)
-- true
-- 30 = 2 * 3 * 5
local function is_multiply_prime(a)
	local function is_prime(n)
		if n < 2 then
			return false
		end
		for i = 2, math.sqrt(n) do
			if n % i == 0 then
				return false
			end
		end
		return true
	end
	local function factorize(n)
		local factors = {}
		for i = 2, math.sqrt(n) do
			if n % i == 0 then
				local factor1 = i
				local factor2 = n / i
				if is_prime(factor1) and is_prime(factor2) then
					table.insert(factors, factor1)
					table.insert(factors, factor2)
					break
				end
			end
		end
		return factors
	end
	local factors = factorize(a)
	if #factors == 0 then
		return false
	end
	for i = 1, #factors do
		if not is_prime(factors[i]) then
			return false
		end
	end
	return true
end


lu = require('luaunit')

function test_humaneval()
local candidate = is_multiply_prime
    lu.assertEquals(candidate(5), false)
    lu.assertEquals(candidate(30), true)
    lu.assertEquals(candidate(8), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(125), true)
    lu.assertEquals(candidate(105), true)
    lu.assertEquals(candidate(126), false)
    lu.assertEquals(candidate(729), false)
    lu.assertEquals(candidate(891), false)
    lu.assertEquals(candidate(1001), true)
end

os.exit(lu.LuaUnit.run())