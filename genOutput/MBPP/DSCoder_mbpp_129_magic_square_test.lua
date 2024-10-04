-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
    local sum = my_matrix[1][1] + my_matrix[1][2] + my_matrix[1][3]
    for i = 1, 3 do
        if my_matrix[i][1] + my_matrix[i][2] + my_matrix[i][3] ~= sum then
            return false
        end
        if my_matrix[1][i] + my_matrix[2][i] + my_matrix[3][i] ~= sum then
            return false
        end
    end
    if my_matrix[1][1] + my_matrix[2][2] + my_matrix[3][3] ~= sum or my_matrix[1][3] + my_matrix[2][2] + my_matrix[3][1] ~= sum then
        return false
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