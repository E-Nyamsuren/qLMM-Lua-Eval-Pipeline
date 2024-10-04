-- Write a function to find the sum of the largest contiguous subtable in the given table.
local function max_sub_array_sum(a, size)
    local max_so_far = a[1]
    local max_ending_here = a[1]
    local start = 1
    local end = 1
    local s = 1
    for i = 2, size do
        max_ending_here = max_ending_here + a[i]
        if max_ending_here < a[i] then
            max_ending_here = a[i]
            s = i
        end
        if max_so_far < max_ending_here then
            max_so_far = max_ending_here
            start = s
            end = i
        end
    end
    print("Maximum contiguous sum is " .. max_so_far)
    print("Starting index " .. start)
    print("Ending index " .. end)
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum
    lu.assertEquals(candidate({-2, -3, 4, -1, -2, 1, 5, -3}, 8), 7)
    lu.assertEquals(candidate({-3, -4, 5, -2, -3, 2, 6, -4}, 8), 8)
    lu.assertEquals(candidate({-4, -5, 6, -3, -4, 3, 7, -5}, 8), 10)
end

os.exit(lu.LuaUnit.run())