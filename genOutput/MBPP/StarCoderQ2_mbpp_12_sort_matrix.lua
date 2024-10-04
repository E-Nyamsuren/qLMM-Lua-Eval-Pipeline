-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
	local N = #M
	local sum_matrix = {}
	for i = 1, N do
		sum_matrix[i] = {}
		for j = 1, N do
			sum_matrix[i][j] = M[i][j] + M[i][j]
		end
	end
	table.sort(sum_matrix, function(a, b)
		local sum_a = 0
		local sum_b = 0
		for i = 1, N do
			sum_a = sum_a + a[i]
			sum_b = sum_b + b[i]
		end
		return sum_a < sum_b
	end)
	local sorted_matrix = {}
	for i = 1, N do
		sorted_matrix[i] = {}
	end
	for i = 1, N do
		for j = 1, N do
			sorted_matrix[i][j] = sum_matrix[i][j] - M[i][j]
		end
	end
	return sorted_matrix
end


lu = require('luaunit')

function test_humaneval()
local candidate = sort_matrix
    lu.assertEquals(candidate({{1, 2, 3}, {2, 4, 5}, {1, 1, 1}}), {{1, 1, 1}, {1, 2, 3}, {2, 4, 5}})
    lu.assertEquals(candidate({{1, 2, 3}, {-2, 4, -5}, {1, -1, 1}}), {{-2, 4, -5}, {1, -1, 1}, {1, 2, 3}})
    lu.assertEquals(candidate({{5, 8, 9}, {6, 4, 3}, {2, 1, 4}}), {{2, 1, 4}, {6, 4, 3}, {5, 8, 9}})
end

os.exit(lu.LuaUnit.run())