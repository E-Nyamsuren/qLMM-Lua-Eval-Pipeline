-- Write a function to sum all amicable numbers from 1 to a specified number.
local function amicable_numbers_sum(limit)
	local sum = 0
	for i = 1, limit do
		local sum1 = 0
		for j = 1, i - 1 do
			if i % j == 0 then
				sum1 = sum1 + j
			end
		end
		local sum2 = 0
		for k = 1, sum1 - 1 do
			if sum1 % k == 0 then
				sum2 = sum2 + k
			end
		end
		if sum2 == i and sum1 ~= i then
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