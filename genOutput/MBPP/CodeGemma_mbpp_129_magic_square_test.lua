-- Write a function to calculate whether the matrix is a magic square.
local function magic_square_test(my_matrix)
    local sum = 0
    local sum_check = 0
    local diag_sum = 0
    local diag_sum_check = 0
    local diag_sum_check_2 = 0
    local diag_sum_check_3 = 0
    local diag_sum_check_4 = 0
    local diag_sum_check_5 = 0
    local diag_sum_check_6 = 0
    local diag_sum_check_7 = 0
    local diag_sum_check_8 = 0
    local diag_sum_check_9 = 0
    local diag_sum_check_10 = 0
    local diag_sum_check_11 = 0
    local diag_sum_check_12 = 0
    local diag_sum_check_13 = 0
    local diag_sum_check_14 = 0
    local diag_sum_check_15 = 0
    local diag_sum_check_16 = 0
    local diag_sum_check_17 = 0
    local diag_sum_check_18 = 0
    local diag_sum_check_19 = 0
    local diag_sum_check_20 = 0
    local diag_sum_check_21 = 0
    local diag_sum_check_22 = 0
    local diag_sum_check_23 = 0
    local diag_sum_check_24 = 0
    local diag_sum_check_25 = 0
    local diag_sum_check_26 = 0
    local diag_sum_check_27 = 0
    local diag_sum_check_28 = 0
    local diag_sum_check_29 = 0
    local diag_sum_check_30 = 0
    local diag_sum_check_31 = 0
    local diag_sum_check_32 = 0
    local diag_sum_check_33 = 0
    local diag_sum_check

lu = require('luaunit')

function test_humaneval()
local candidate = magic_square_test
    lu.assertEquals(candidate({{7, 12, 1, 14}, {2, 13, 8, 11}, {16, 3, 10, 5}, {9, 6, 15, 4}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 8}}), true)
    lu.assertEquals(candidate({{2, 7, 6}, {9, 5, 1}, {4, 3, 7}}), false)
end

os.exit(lu.LuaUnit.run())