-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
    local sum = 0
    for i = 1, #my_matrix do
        for j = 1, #my_matrix[i] do
            sum = sum + my_matrix[i][j]
        end
    end
    local sum_of_squares = 0
    for i = 1, #my_matrix do
        for j = 1, #my_matrix[i] do
            sum_of_squares = sum_of_squares + (my_matrix[i][j] * my_matrix[i][j])
        end
    end
    if sum * sum == sum_of_squares then
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