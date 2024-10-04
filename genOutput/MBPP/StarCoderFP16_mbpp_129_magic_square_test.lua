-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
	local sum = 0
	local magic_sum = 0
	local magic_square = true
	local magic_square_row = true
	local magic_square_col = true
	local magic_square_diag = true
	local magic_square_diag2 = true
	local magic_square_row_sum = 0
	local magic_square_col_sum = 0
	local magic_square_diag_sum = 0
	local magic_square_diag2_sum = 0
	local magic_square_row_sum_2 = 0
	local magic_square_col_sum_2 = 0
	local magic_square_diag_sum_2 = 0
	local magic_square_diag2_sum_2 = 0
	local magic_square_row_sum_3 = 0
	local magic_square_col_sum_3 = 0
	local magic_square_diag_sum_3 = 0
	local magic_square_diag2_sum_3 = 0
	local magic_square_row_sum_4 = 0
	local magic_square_col_sum_4 = 0
	local magic_square_diag_sum_4 = 0
	local magic_square_diag2_sum_4 = 0
	local magic_square_row_sum_5 = 0
	local magic_square_col_sum_5 = 0
	local magic_square_diag_sum_5 = 0
	local magic_square_diag2_sum_5 = 0
	local magic_square_row_sum_6 = 0
	local magic_square_col_sum_6 = 0
	local magic_square_diag_sum_6 = 0
	local magic_square_diag2_sum_6 = 0
	local magic_square_row_sum_7 = 0
	local magic_square_col_sum_7 = 0
	local magic_square_diag_sum_7 = 0
	local magic_square_diag2_sum_7 = 0


lu = require('luaunit')

function test_humaneval()
local candidate = magic_square_test
    lu.assertEquals(candidate({{7, 12, 1, 14}, {2, 13, 8, 11}, {16, 3, 10, 5}, {9, 6, 15, 4}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 8}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 7}}), false)
end

os.exit(lu.LuaUnit.run())