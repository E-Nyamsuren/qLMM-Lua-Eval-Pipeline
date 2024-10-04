-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
	local n = #my_matrix
	local sum = (n * (n * n + 1)) / 2
	local row_sum = {}
	local col_sum = {}
	local diag_sum = {}
	for i = 1, n do
		local row_sum_i = 0
		local col_sum_i = 0
		for j = 1, n do
			row_sum_i = row_sum_i + my_matrix[i][j]
			col_sum_i = col_sum_i + my_matrix[j][i]
		end
		table.insert(row_sum, row_sum_i)
		table.insert(col_sum, col_sum_i)
		diag_sum[i] = my_matrix[i][i]
	end
	diag_sum[n + 1] = my_matrix[1][n]
	for i = 1, n do
		if row_sum[i] ~= sum or col_sum[i] ~= sum or diag_sum[i] ~= sum or diag_sum[n + 1] ~= sum then
			return false
		end
	end
	return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = magic_square_test
    lu.assertEquals(candidate({{7, 12, 1, 14}, {2, 13, 8, 11}, {16, 3, 10, 5}, {9, 6, 15, 4}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 8}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 7}}), false)
end

os.exit(lu.LuaUnit.run())