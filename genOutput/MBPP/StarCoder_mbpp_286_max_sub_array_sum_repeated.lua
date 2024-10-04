-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
	local max_sum = 0
	local temp_sum = 0
	local i = 0
	local j = 0
	local k = k
	local n = n
	local a = a
	for i = 1, k do
		temp_sum = 0
		for j = 1, n do
			temp_sum = temp_sum + a[j]
		end
		if temp_sum > max_sum then
			max_sum = temp_sum
		end
	end
	return max_sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum_repeated
    lu.assertEquals(candidate({10, 20, -30, -1}, 4, 3), 30)
    lu.assertEquals(candidate({-1, 10, 20}, 3, 2), 59)
    lu.assertEquals(candidate({-1, -2, -3}, 3, 3), -1)
end

os.exit(lu.LuaUnit.run())