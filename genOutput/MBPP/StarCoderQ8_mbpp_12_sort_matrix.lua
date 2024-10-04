-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
	local sums = {}
	for i, row in ipairs(M) do
		sums[i] = 0
		for j, val in ipairs(row) do
			sums[i] = sums[i] + val
		end
	end
	table.sort(sums)
	local sorted_M = {}
	for i, sum in ipairs(sums) do
		for j, row in ipairs(M) do
			if sums[i] == sum then
				sorted_M[i] = row
				break
			end
		end
	end
	return sorted_M
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_matrix
    lu.assertEquals(candidate({{1, 2, 3}, {2, 4, 5}, {1, 1, 1}}), {{1, 1, 1}, {1, 2, 3}, {2, 4, 5}})
    lu.assertEquals(candidate({{1, 2, 3}, {-2, 4, -5}, {1, -1, 1}}), {{-2, 4, -5}, {1, -1, 1}, {1, 2, 3}})
    lu.assertEquals(candidate({{5, 8, 9}, {6, 4, 3}, {2, 1, 4}}), {{2, 1, 4}, {6, 4, 3}, {5, 8, 9}})
end

os.exit(lu.LuaUnit.run())