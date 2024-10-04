-- Write a luathon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
local function even_binomial_Coeff_Sum(n)
	local sum = 0
	for i = 0, n do
		sum = sum + binomial_Coeff(n, i)
	end
	return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = even_binomial_Coeff_Sum
    lu.assertEquals(candidate(4), 8)
    lu.assertEquals(candidate(6), 32)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())