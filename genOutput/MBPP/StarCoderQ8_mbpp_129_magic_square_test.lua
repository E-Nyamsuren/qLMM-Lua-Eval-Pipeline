-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
	local n = #my_matrix
	local sum = (n * (n * n + 1)) / 2
	local row_sum = 0
	local col_sum = 0
	local diag_sum = 0
	local anti_diag_sum = 0

lu = require('luaunit')

function test_humaneval()
local candidate = magic_square_test
    lu.assertEquals(candidate({{7, 12, 1, 14}, {2, 13, 8, 11}, {16, 3, 10, 5}, {9, 6, 15, 4}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 8}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 7}}), false)
end

os.exit(lu.LuaUnit.run())