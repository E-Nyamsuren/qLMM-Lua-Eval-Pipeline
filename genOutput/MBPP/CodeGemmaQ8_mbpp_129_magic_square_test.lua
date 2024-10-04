-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
    local sum_row = 0
    local sum_col = 0
    local sum_diag = 0
    local sum_diag2 = 0
    local n = #my_matrix
    for i = 1, n do
        sum_row = sum_row + my_matrix[i][1]
        sum_col = sum_col + my_matrix[1][i]
        sum_diag = sum_diag + my_matrix[i][i]
        sum_diag2 = sum_diag2 + my_matrix[i][n - i + 1]
    end
    if sum_row == sum_col and sum_row == sum_diag and sum_row == sum_diag2 then
        return true
    else
        return false
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