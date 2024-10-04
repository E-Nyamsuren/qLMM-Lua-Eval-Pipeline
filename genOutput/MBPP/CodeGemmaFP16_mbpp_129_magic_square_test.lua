-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
    local magic_sum = 0
    local magic_sum_row = 0
    local magic_sum_col = 0
    local magic_sum_diag = 0
    local magic_sum_diag2 = 0
    local magic_sum_row2 = 0
    local magic_sum_col2 = 0
    local magic_sum_diag22 = 0
    local magic_sum_diag222 = 0
    local magic_sum_row3 = 0
    local magic_sum_col3 = 0
    local magic_sum_diag3 = 0
    local magic_sum_diag33 = 0
    local magic_sum_row4 = 0
    local magic_sum_col4 = 0
    local magic_sum_diag4 = 0
    local magic_sum_diag44 = 0
    local magic_sum_row5 = 0
    local magic_sum_col5 = 0
    local magic_sum_diag5 = 0
    local magic_sum_diag55 = 0
    local magic_sum_row6 = 0
    local magic_sum_col6 = 0
    local magic_sum_diag6 = 0
    local magic_sum_diag66 = 0
    local magic_sum_row7 = 0
    local magic_sum_col7 = 0
    local magic_sum_diag7 = 0
    local magic_sum_diag77 = 0
    local magic_sum_row8 = 0
    local magic_sum_col8 = 0
    local magic_sum_diag8 = 0
    local magic_sum_diag88 = 0
    local magic_sum_row9 = 0
    local magic_sum_col9 = 0
    local magic_sum_diag9 = 0
    local magic_sum_diag99 = 0
    local magic_sum_row10 = 0
    local magic_sum_col10 = 0
    local magic_sum_diag10

lu = require('luaunit')

function test_humaneval()
local candidate = magic_square_test
    lu.assertEquals(candidate({{7, 12, 1, 14}, {2, 13, 8, 11}, {16, 3, 10, 5}, {9, 6, 15, 4}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 8}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 7}}), false)
end

os.exit(lu.LuaUnit.run())