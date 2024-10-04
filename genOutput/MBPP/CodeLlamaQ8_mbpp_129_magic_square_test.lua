-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
    local sum = 0
    for i = 1, #my_matrix do
        sum = sum + my_matrix[i]
    end
    if sum ~= my_matrix[1] * #my_matrix then
        return false
    end
    for i = 1, #my_matrix do
        local row_sum = 0
        for j = 1, #my_matrix do
            row_sum = row_sum + my_matrix[i][j]
        end
        if row_sum ~= my_matrix[i][1] * #my_matrix then
            return false
        end
    end
    for i = 1, #my_matrix do
        local col_sum = 0
        for j = 1, #my_matrix do
            col_sum = col_sum + my_matrix[j][i]
        end
        if col_sum ~= my_matrix[1][i] * #my_matrix then
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