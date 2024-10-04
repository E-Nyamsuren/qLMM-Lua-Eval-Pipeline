-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
	local size = #my_matrix[1]
	local sum = 0
	local magic_sum = 0
	local magic_matrix = {}
	local magic_matrix_sum = {}
	local magic_matrix_sum_2 = {}
	local magic_matrix_sum_3 = {}
	local magic_matrix_sum_4 = {}
	local magic_matrix_sum_5 = {}
	local magic_matrix_sum_6 = {}
	local magic_matrix_sum_7 = {}
	local magic_matrix_sum_8 = {}
	local magic_matrix_sum_9 = {}
	local magic_matrix_sum_10 = {}
	local magic_matrix_sum_11 = {}
	local magic_matrix_sum_12 = {}
	local magic_matrix_sum_13 = {}
	local magic_matrix_sum_14 = {}
	local magic_matrix_sum_15 = {}
	local magic_matrix_sum_16 = {}
	local magic_matrix_sum_17 = {}
	local magic_matrix_sum_18 = {}
	local magic_matrix_sum_19 = {}
	local magic_matrix_sum_20 = {}
	local magic_matrix_sum_21 = {}
	local magic_matrix_sum_22 = {}
	local magic_matrix_sum_23 = {}
	local magic_matrix_sum_24 = {}
	local magic_matrix_sum_25 = {}
	local magic_matrix_sum_26 = {}
	local magic_matrix_sum_27 = {}
	local magic_matrix_sum_28 = {}
	local magic_matrix_sum_29 = {}
	local magic_matrix_sum_30 = {}
	local magic_matrix_sum_31 = {}
	local magic_matrix_sum_32 = {}
	local magic_matrix_sum_33 = {}
	local magic_matrix_sum_34 = {}
	local magic_matrix_sum_35 = {}
	local magic_

lu = require('luaunit')

function test_humaneval()
local candidate = magic_square_test
    lu.assertEquals(candidate({{7, 12, 1, 14}, {2, 13, 8, 11}, {16, 3, 10, 5}, {9, 6, 15, 4}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 8}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 7}}), false)
end

os.exit(lu.LuaUnit.run())