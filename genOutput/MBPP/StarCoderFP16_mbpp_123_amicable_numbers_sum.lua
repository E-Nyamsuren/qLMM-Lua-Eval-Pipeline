-- Write a function to sum all amicable numbers from 1 to a specified number.
local function amicable_numbers_sum(limit)
	local sum = 0
	for i = 1, limit do
		local sum_of_divisors = sum_of_proper_divisors(i)
		local sum_of_divisors_of_sum = sum_of_proper_divisors(sum_of_divisors)
		if i == sum_of_divisors_of_sum and i ~= sum_of_divisors then
			sum = sum + i
		end
	end
	return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = amicable_numbers_sum
    lu.assertEquals(candidate(999), 504)
    lu.assertEquals(candidate(9999), 31626)
    lu.assertEquals(candidate(99), 0)
end

os.exit(lu.LuaUnit.run())