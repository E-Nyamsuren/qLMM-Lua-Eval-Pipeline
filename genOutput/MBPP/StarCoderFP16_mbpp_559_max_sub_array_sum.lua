-- Write a function to find the sum of the largest contiguous subtable in the given table.
local function max_sub_array_sum(a, size)
	local max_sum = 0
	local sum = 0
	for i = 1, size do
		sum = sum + a[i]
		if sum > max_sum then
			max_sum = sum
		elseif sum < 0 then
			sum = 0
		end
	end
	return max_sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum
    lu.assertEquals(candidate({-2, -3, 4, -1, -2, 1, 5, -3}, 8), 7)
    lu.assertEquals(candidate({-3, -4, 5, -2, -3, 2, 6, -4}, 8), 8)
    lu.assertEquals(candidate({-4, -5, 6, -3, -4, 3, 7, -5}, 8), 10)
end

os.exit(lu.LuaUnit.run())