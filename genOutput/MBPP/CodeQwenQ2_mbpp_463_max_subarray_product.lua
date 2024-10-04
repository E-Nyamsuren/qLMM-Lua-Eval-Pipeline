-- Write a function to find the maximum product subtable of the given table.
local function max_subarray_product(arr)
    local max_product = arr[1]
    local current_max = arr[1]
    local current_min = arr[1]
    for i = 2, #arr do
        if arr[i] < 0 then
            local temp = current_max
            current_max = current_min
            current_min = temp
        end
        current_max = math.max(arr[i], current_max * arr[i])
        current_min = math.min(arr[i], current_min * arr[i])
        max_product = math.max(max_product, current_max)
    end
    return max_product
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_subarray_product
    lu.assertEquals(candidate({1, -2, -3, 0, 7, -8, -2}), 112)
    lu.assertEquals(candidate({6, -3, -10, 0, 2}), 180)
    lu.assertEquals(candidate({-2, -40, 0, -2, -3}), 80)
end

os.exit(lu.LuaUnit.run())