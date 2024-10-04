-- Write a function that returns the table in a table of tables whose sum of elements is the highest.
local function max_sum_list(lists)
	local max_sum = 0
	local max_list = {}
	for i, list in ipairs(lists) do
		local sum = 0
		for j, value in ipairs(list) do
			sum = sum + value
		end
		if sum > max_sum then
			max_sum = sum
			max_list = list
		end
	end
	return max_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum_list
    lu.assertEquals(candidate({{1, 2, 3}, {4, 5, 6}, {10, 11, 12}, {7, 8, 9}}), {10, 11, 12})
    lu.assertEquals(candidate({{3, 2, 1}, {6, 5, 4}, {12, 11, 10}}), {12, 11, 10})
    lu.assertEquals(candidate({{2, 3, 1}}), {2, 3, 1})
end

os.exit(lu.LuaUnit.run())