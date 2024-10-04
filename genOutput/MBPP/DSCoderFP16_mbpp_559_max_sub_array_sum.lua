-- Write a function to find the sum of the largest contiguous subtable in the given table.
local function max_sub_array_sum(a, size)

    -- Initialize maximum sum, current sum and starting index
    local max_sum = a[1]
    local curr_sum = a[1]
    local start_index = 1
    local end_index = 1

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum
    lu.assertEquals(candidate({-2, -3, 4, -1, -2, 1, 5, -3}, 8), 7)
    lu.assertEquals(candidate({-3, -4, 5, -2, -3, 2, 6, -4}, 8), 8)
    lu.assertEquals(candidate({-4, -5, 6, -3, -4, 3, 7, -5}, 8), 10)
end

os.exit(lu.LuaUnit.run())