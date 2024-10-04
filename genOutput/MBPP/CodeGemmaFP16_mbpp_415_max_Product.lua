-- Write a luathon function to find a pair with highest product from a given table of integers.
local function max_Product(arr)
    local max_product = arr[1] * arr[2]
    local max_product_index = 1
    local max_product_index2 = 2
    for i = 1, #arr do
        for j = i + 1, #arr do
            local product = arr[i] * arr[j]
            if product > max_product then
                max_product = product
                max_product_index = i
                max_product_index2 = j
            end
        end
    end
    return max_product_index, max_product_index2
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Product
    lu.assertEquals(candidate({1, 2, 3, 4, 7, 0, 8, 4}), {7, 8})
    lu.assertEquals(candidate({0, -1, -2, -4, 5, 0, -6}), {-4, -6})
    lu.assertEquals(candidate({1, 2, 3}), {2, 3})
end

os.exit(lu.LuaUnit.run())