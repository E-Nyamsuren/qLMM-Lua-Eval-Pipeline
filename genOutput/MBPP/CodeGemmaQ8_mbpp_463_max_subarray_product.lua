-- Write a function to find the maximum product subtable of the given table.
local function max_subarray_product(arr)
    local max_so_far = arr[1]
    local max_ending_here = arr[1]
    local min_ending_here = arr[1]
    for i = 2, #arr do
        local temp = max_ending_here
        max_ending_here = math.max(arr[i], math.max(max_ending_here * arr[i], min_ending_here * arr[i]))
        min_ending_here = math.min(arr[i], math.min(temp * arr[i], min_ending_here * arr[i]))
        max_so_far = math.max(max_so_far, max_ending_here)
    end
    return max_so_far
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_subarray_product
    lu.assertEquals(candidate({1, -2, -3, 0, 7, -8, -2}), 112)
    lu.assertEquals(candidate({6, -3, -10, 0, 2}), 180)
    lu.assertEquals(candidate({-2, -40, 0, -2, -3}), 80)
end

os.exit(lu.LuaUnit.run())