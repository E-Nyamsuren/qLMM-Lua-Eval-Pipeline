-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
    local n = #my_matrix
    local magic_sum = 0
    local row_sums = {}
    local col_sums = {}
    local diag_sum1 = 0
    local diag_sum2 = 0
    
    -- Calculate the sum of the first row
    for i = 1, n do
        magic_sum = magic_sum + my_matrix[1][i]
    end
    
    -- Calculate the sum of each row
    for i = 1, n do
        row_sums[i] = 0
        for j = 1, n do
            row_sums[i] = row_sums[i] + my_matrix[i][j]
        end
    end
    
    -- Calculate the sum of each column
    for i = 1, n do
        col_sums[i] = 0
        for j = 1, n do
            col_sums[i] = col_sums[i] + my_matrix[j][i]
        end
    end
    
    -- Calculate the sum of the diagonal from top left to bottom right
    for i = 1, n do
        diag_sum1 = diag_sum1 + my_matrix[i][i]
    end
    
    -- Calculate the sum of the diagonal from top right to bottom left
    for i = 1, n do
        diag_sum2 = diag_sum2 + my_matrix[i][n - i + 1]
    end
    
    -- Check if all rows, columns, and diagonals have the same sum
    for i = 1, n do
        if row_sums[i] ~= magic_sum or col_sums[i] ~= magic_sum or (diag_sum1 ~= magic_sum and diag_sum2 ~= magic_sum) then
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