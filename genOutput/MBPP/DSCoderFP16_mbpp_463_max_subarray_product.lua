-- Write a function to find the maximum product subtable of the given table.
local function max_subarray_product(arr)

    -- Initialize the maximum and minimum product ending at each position
    local max_ending_here = arr[1]
    local min_ending_here = arr[1]

lu = require('luaunit')

function test_humaneval()
local candidate = max_subarray_product
    lu.assertEquals(candidate({1, -2, -3, 0, 7, -8, -2}), 112)
    lu.assertEquals(candidate({6, -3, -10, 0, 2}), 180)
    lu.assertEquals(candidate({-2, -40, 0, -2, -3}), 80)
end

os.exit(lu.LuaUnit.run())