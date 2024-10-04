-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)

    -- Calculate the sum of each row, column and diagonal
    local row_sum, col_sum, diag_sum = 0, 0, 0
    for i = 1, #my_matrix do
        row_sum = row_sum + my_matrix[i][1]
        col_sum = col_sum + my_matrix[1][i]
        if i == #my_matrix then
            diag_sum = diag_sum + my_matrix[i][i]
        end
        if i ~= #my_matrix then
            diag_sum = diag_sum + my_matrix[i][#my_matrix - i + 1]
        end
    end

lu = require('luaunit')

function test_humaneval()
local candidate = magic_square_test
    lu.assertEquals(candidate({{7, 12, 1, 14}, {2, 13, 8, 11}, {16, 3, 10, 5}, {9, 6, 15, 4}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 8}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 7}}), false)
end

os.exit(lu.LuaUnit.run())