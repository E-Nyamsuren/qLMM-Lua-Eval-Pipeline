-- Write a function to determine if the sum of the divisors of two integers are the same.
local function are_equivalent(num1, num2)
	local sum1 = 0
	local sum2 = 0
	for i = 1, math.floor(math.sqrt(num1)) do
		if num1 % i == 0 then
			sum1 = sum1 + i
			if num1 / i ~= i then
				sum1 = sum1 + num1 / i
			end
		end
	end
	for i = 1, math.floor(math.sqrt(num2)) do
		if num2 % i == 0 then
			sum2 = sum2 + i
			if num2 / i ~= i then
				sum2 = sum2 + num2 / i
			end
		end
	end
	return sum1 == sum2
end

lu = require('luaunit')

function test_humaneval()
local candidate = are_equivalent
    lu.assertEquals(candidate(36, 57), false)
    lu.assertEquals(candidate(2, 4), false)
    lu.assertEquals(candidate(23, 47), true)
end

os.exit(lu.LuaUnit.run())