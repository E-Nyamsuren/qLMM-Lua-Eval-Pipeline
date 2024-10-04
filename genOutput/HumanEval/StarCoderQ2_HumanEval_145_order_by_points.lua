-- Write a function which sorts the given table of integers
-- in ascending order according to the sum of their digits.
-- Note: if there are several items with similar sum of their digits,
-- order them based on their index in original table.
-- For example:
-- >>> order_by_points({1, 11, -1, -11, -12})
-- {-1, -11, 1, -12, 11}
-- >>> order_by_points({})
-- {}
local function order_by_points(nums)
	local sum_nums = {}
	for i, num in ipairs(nums) do
		local sum = 0
		for digit in tostring(num):gmatch("%d") do
			sum = sum + digit
		end
		sum_nums[i] = {sum, num}
	end
	table.sort(sum_nums, function(a, b)
		if a[1] == b[1] then
			return a[2] < b[2]
		end
		return a[1] < b[1]
	end)
	local result = {}
	for _, pair in ipairs(sum_nums) do
		result[#result + 1] = pair[2]
	end
	return result
end


lu = require('luaunit')

function test_humaneval()
local candidate = order_by_points
    lu.assertEquals(candidate({1, 11, -1, -11, -12}), {-1, -11, 1, -12, 11})
    lu.assertEquals(candidate({1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46}), {0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, -11, -32, 43, 54, -98, 2, -3}), {-3, -32, -98, -11, 1, 2, 43, 54})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}), {1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9})
    lu.assertEquals(candidate({0, 6, 6, -76, -21, 23, 4}), {-76, -21, 0, 4, 23, 6, 6})
end

os.exit(lu.LuaUnit.run())