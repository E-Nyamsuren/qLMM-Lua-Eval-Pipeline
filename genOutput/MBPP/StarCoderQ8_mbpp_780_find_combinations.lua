-- Write a function to find the combinations of sums with tables in the given table table. https://www.geeksforgeeks.org/luathon-combinations-of-sum-with-tables-in-table-table/
local function find_combinations(test_list)
	local result = {}
	local function find_combinations_helper(test_list, index, current_combination)
		if index == #test_list then
			table.insert(result, current_combination)
		else
			for i = index, #test_list do
				local new_combination = {}
				for j = 1, #current_combination do
					table.insert(new_combination, current_combination[j])
				end
				table.insert(new_combination, test_list[i])
				find_combinations_helper(test_list, i + 1, new_combination)
			end
		end
	end
	find_combinations_helper(test_list, 1, {})
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_combinations
    lu.assertEquals(candidate({{2, 4}, {6, 7}, {5, 1}, {6, 10}}), {{8, 11}, {7, 5}, {8, 14}, {11, 8}, {12, 17}, {11, 11}})
    lu.assertEquals(candidate({{3, 5}, {7, 8}, {6, 2}, {7, 11}}), {{10, 13}, {9, 7}, {10, 16}, {13, 10}, {14, 19}, {13, 13}})
    lu.assertEquals(candidate({{4, 6}, {8, 9}, {7, 3}, {8, 12}}), {{12, 15}, {11, 9}, {12, 18}, {15, 12}, {16, 21}, {15, 15}})
end

os.exit(lu.LuaUnit.run())