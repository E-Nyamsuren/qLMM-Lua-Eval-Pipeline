-- Write a function to check whether the product of numbers in a table is even or not.
local function is_product_even(arr)
    local product = 1
    for i = 1, #arr do
        product = product * arr[i]
    end
    if product % 2 == 0 then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_product_even
    lu.assertEquals(candidate({1, 2, 3}), true)
    lu.assertEquals(candidate({1, 2, 1, 4}), true)
    lu.assertEquals(candidate({1, 1}), false)
end

os.exit(lu.LuaUnit.run())