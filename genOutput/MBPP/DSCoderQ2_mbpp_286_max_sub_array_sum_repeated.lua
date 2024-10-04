-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local max_sum = 0
    local curr_sum = 0
    local total_sum = 0
    local min_prefix_sum = 0
    local curr_prefix_sum = 0

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum_repeated
    lu.assertEquals(candidate({10, 20, -30, -1}, 4, 3), 30)
    lu.assertEquals(candidate({-1, 10, 20}, 3, 2), 59)
    lu.assertEquals(candidate({-1, -2, -3}, 3, 3), -1)
end

os.exit(lu.LuaUnit.run())