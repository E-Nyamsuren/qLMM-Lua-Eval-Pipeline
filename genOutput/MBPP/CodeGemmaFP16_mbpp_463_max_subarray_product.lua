-- Write a function to find the maximum product subtable of the given table.
local function max_subarray_product(arr)
    local max_product = arr[1]
    local min_product = arr[1]
    local result = arr[1]
    
    for i = 2, #arr do
        local current_product = arr[i]
        
        if current_product < 0 then
            local temp = max_product
            max_product = min_product
            min_product = temp
        end
        
        max_product = math.max(current_product, max_product * current_product)
        min_product = math.min(current_product, min_product * current_product)
        
        result = math.max(result, max_product)
    end
    
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_subarray_product
    lu.assertEquals(candidate({1, -2, -3, 0, 7, -8, -2}), 112)
    lu.assertEquals(candidate({6, -3, -10, 0, 2}), 180)
    lu.assertEquals(candidate({-2, -40, 0, -2, -3}), 80)
end

os.exit(lu.LuaUnit.run())