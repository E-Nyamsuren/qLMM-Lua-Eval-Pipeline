-- Write a function to find the sum of the largest contiguous subtable in the given table.
local function max_sub_array_sum(a, size)
    local max_so_far = 0
    local max_ending_here = 0
    for i = 1, size do
        max_ending_here = max_ending_here + a[i]
        if max_ending_here < 0 then
            max_ending_here = 0
        elseif max_so_far < max_ending_here then
            max_so_far = max_ending_here
        end
    end
    return max_so_far
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum
    lu.assertEquals(candidate({-2, -3, 4, -1, -2, 1, 5, -3}, 8), 7)
    lu.assertEquals(candidate({-3, -4, 5, -2, -3, 2, 6, -4}, 8), 8)
    lu.assertEquals(candidate({-4, -5, 6, -3, -4, 3, 7, -5}, 8), 10)
end

os.exit(lu.LuaUnit.run())