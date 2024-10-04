-- Write a function to find the maximum product subtable of the given table.
local function max_subarray_product(arr)
    local max_product = arr[1]
    local min_product = arr[1]
    local result = arr[1]
    
    for i = 2, #arr do
        local temp = max_product
        max_product = math.max(math.max(max_product * arr[i], min_product * arr[i]), arr[i])
        min_product = math.min(math.min(temp * arr[i], min_product * arr[i]), arr[i])
        
        if max_product > result then
            result = max_product
        end
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