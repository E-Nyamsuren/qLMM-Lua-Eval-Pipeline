-- Write a function to find the maximum difference between available pairs in the given table table.
local function max_difference(test_list)
	local max_diff = 0
	local min_value = test_list[1]
	local max_value = test_list[1]
	for i = 2, #test_list do
		if test_list[i] < min_value then
			min_value = test_list[i]
		end
		if test_list[i] > max_value then
			max_value = test_list[i]
		end
		if max_value - min_value > max_diff then
			max_diff = max_value - min_value
		end
	end
	return max_diff
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_difference
    lu.assertEquals(candidate({{3, 5}, {1, 7}, {10, 3}, {1, 2}}), 7)
    lu.assertEquals(candidate({{4, 6}, {2, 17}, {9, 13}, {11, 12}}), 15)
    lu.assertEquals(candidate({{12, 35}, {21, 27}, {13, 23}, {41, 22}}), 23)
end

os.exit(lu.LuaUnit.run())