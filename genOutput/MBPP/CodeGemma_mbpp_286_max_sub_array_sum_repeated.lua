-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local max_sum = 0
    local max_sum_index = 0
    local max_sum_length = 0
    local max_sum_array = {}
    local max_sum_array_length = 0
    local max_sum_array_index = 0
    local max_sum_array_start = 0
    local max_sum_array_end = 0
    local max_sum_array_start_index = 0
    local max_sum_array_end_index = 0
    local max_sum_array_start_length = 0
    local max_sum_array_end_length = 0
    local max_sum_array_start_array = {}
    local max_sum_array_end_array = {}
    local max_sum_array_start_array_length = 0
    local max_sum_array_end_array_length = 0
    local max_sum_array_start_array_index = 0
    local max_sum_array_end_array_index = 0
    local max_sum_array_start_array_start = 0
    local max_sum_array_start_array_end = 0
    local max_sum_array_start_array_start_index = 0
    local max_sum_array_start_array_end_index = 0
    local max_sum_array_start_array_start_length = 0
    local max_sum_array_start_array_end_length = 0
    local max_sum_array_start_array_start_array = {}
    local max_sum_array_start_array_end_array = {}
    local max_sum_array_start_array_start_array_length = 0
    local max_sum_array_start_array_end_array_length = 0
    local max_sum_array_start_array_start_array_index = 0
    local max_sum

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum_repeated
    lu.assertEquals(candidate({10, 20, -30, -1}, 4, 3), 30)
    lu.assertEquals(candidate({-1, 10, 20}, 3, 2), 59)
    lu.assertEquals(candidate({-1, -2, -3}, 3, 3), -1)
end

os.exit(lu.LuaUnit.run())