-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local max_sum = 0
    local max_sum_index = 0
    local max_sum_length = 0
    local max_sum_repeated = 0
    local max_sum_repeated_index = 0
    local max_sum_repeated_length = 0
    local max_sum_repeated_k = 0
    local max_sum_repeated_k_index = 0
    local max_sum_repeated_k_length = 0
    local max_sum_repeated_k_k = 0
    local max_sum_repeated_k_k_index = 0
    local max_sum_repeated_k_k_length = 0
    local max_sum_repeated_k_k_k = 0
    local max_sum_repeated_k_k_k_index = 0
    local max_sum_repeated_k_k_k_length = 0
    local max_sum_repeated_k_k_k_k = 0
    local max_sum_repeated_k_k_k_k_index = 0
    local max_sum_repeated_k_k_k_k_length = 0
    local max_sum_repeated_k_k_k_k_k = 0
    local max_sum_repeated_k_k_k_k_k_index = 0
    local max_sum_repeated_k_k_k_k_k_length = 0
    local max_sum_repeated_k_k_k_k_k_k = 0
    local max_sum_repeated_k_k_k_k_k_k_index = 0
    local max_sum_repeated_k_k_k_k_k_k_length = 0
    local max_sum_repeated_k_k_k_k_k_k_k = 0
    local max_sum_repeated_k_k_k_k_k_k_k_

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum_repeated
    lu.assertEquals(candidate({10, 20, -30, -1}, 4, 3), 30)
    lu.assertEquals(candidate({-1, 10, 20}, 3, 2), 59)
    lu.assertEquals(candidate({-1, -2, -3}, 3, 3), -1)
end

os.exit(lu.LuaUnit.run())