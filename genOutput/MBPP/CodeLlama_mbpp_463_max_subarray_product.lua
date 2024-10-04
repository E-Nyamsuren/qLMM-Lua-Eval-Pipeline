-- Write a function to find the maximum product subtable of the given table.
local function max_subarray_product(arr)
    local max_product = 1
    local min_product = 1
    local max_product_end = 1
    local min_product_end = 1
    local n = #arr
    for i = 1, n do
        local product = 1
        local product_end = 1
        for j = i, n do
            product = product * arr[j]
            product_end = j
            if product > max_product then
                max_product = product
                max_product_end = product_end
            end
            if product < min_product then
                min_product = product
                min_product_end = product_end
            end
        end
    end
    return max_product, max_product_end - min_product_end + 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_subarray_product
    lu.assertEquals(candidate({1, -2, -3, 0, 7, -8, -2}), 112)
    lu.assertEquals(candidate({6, -3, -10, 0, 2}), 180)
    lu.assertEquals(candidate({-2, -40, 0, -2, -3}), 80)
end

os.exit(lu.LuaUnit.run())