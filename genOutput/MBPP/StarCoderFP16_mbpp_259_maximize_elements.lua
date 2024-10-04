-- Write a function to maximize the given two tables.
local function maximize_elements(test_tup1, test_tup2)
	local max_tup1 = {}
	local max_tup2 = {}
	local max_tup1_index = 1
	local max_tup2_index = 1
	local max_tup1_value = 0
	local max_tup2_value = 0
	for i = 1, #test_tup1 do
		if test_tup1[i] > max_tup1_value then
			max_tup1_value = test_tup1[i]
			max_tup1_index = i
		end
	end
	for i = 1, #test_tup2 do
		if test_tup2[i] > max_tup2_value then
			max_tup2_value = test_tup2[i]
			max_tup2_index = i
		end
	end
	max_tup1 = {max_tup1_index, max_tup1_value}
	max_tup2 = {max_tup2_index, max_tup2_value}
	return max_tup1, max_tup2
end

lu = require('luaunit')

function test_humaneval()
local candidate = maximize_elements
    lu.assertEquals(candidate({{1, 3}, {4, 5}, {2, 9}, {1, 10}}, {{6, 7}, {3, 9}, {1, 1}, {7, 3}}), {{6, 7}, {4, 9}, {2, 9}, {7, 10}})
    lu.assertEquals(candidate({{2, 4}, {5, 6}, {3, 10}, {2, 11}}, {{7, 8}, {4, 10}, {2, 2}, {8, 4}}), {{7, 8}, {5, 10}, {3, 10}, {8, 11}})
    lu.assertEquals(candidate({{3, 5}, {6, 7}, {4, 11}, {3, 12}}, {{8, 9}, {5, 11}, {3, 3}, {9, 5}}), {{8, 9}, {6, 11}, {4, 11}, {9, 12}})
end

os.exit(lu.LuaUnit.run())