-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
    -- Check if the matrix is square
    local rows = #my_matrix
    local cols = #my_matrix[1]
    if rows ~= cols then
        return false
    end
    
    -- Calculate the sum of the first row
    local magic_sum = 0
    for i = 1, cols do
        magic_sum = magic_sum + my_matrix[1][i]
    end
    
    -- Check if all rows have the same sum
    for i = 2, rows do
        local row_sum = 0
        for j = 1, cols do
            row_sum = row_sum + my_matrix[i][j]
        end
        if row_sum ~= magic_sum then
            return false
        end
    end
    
    -- Check if all columns have the same sum
    for i = 1, cols do
        local col_sum = 0
        for j = 1, rows do
            col_sum = col_sum + my_matrix[j][i]
        end
        if col_sum ~= magic_sum then
            return false
        end
    end
    
    -- Check if the diagonal has the same sum
    local diag_sum = 0
    for i = 1, rows do
        diag_sum = diag_sum + my_matrix[i][i]
    end
    if diag_sum ~= magic_sum then
        return false
    end
    
    -- Check if the anti-diagonal has the same sum
    local anti_diag_sum = 0
    for i = 1, rows do
        anti_diag_sum = anti_diag_sum + my_matrix[i][cols - i + 1]
    end
    if anti_diag_sum ~= magic_sum then
        return false
    end
    
    -- If all checks pass, the matrix is a magic square
    return true
end
```

lu = require('luaunit')

function test_humaneval()
local candidate = magic_square_test
    lu.assertEquals(candidate({{7, 12, 1, 14}, {2, 13, 8, 11}, {16, 3, 10, 5}, {9, 6, 15, 4}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 8}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 7}}), false)
end

os.exit(lu.LuaUnit.run())