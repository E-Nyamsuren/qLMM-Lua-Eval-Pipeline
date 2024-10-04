-- Write a function to find the product of first even and odd number of a given table.
local function mul_even_odd(list1)
    local product_even = 1
    local product_odd = 1
    for i = 1, #list1 do
        if list1[i] % 2 == 0 then
            product_even = product_even * list1[i]
        else
            product_odd = product_odd * list1[i]
        end
    end
    return product_even * product_odd
end

lu = require('luaunit')

function test_humaneval()
local candidate = mul_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 4)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 2)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 10)
end

os.exit(lu.LuaUnit.run())