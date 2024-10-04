-- Write a function to find the product of first even and odd number of a given table.
local function mul_even_odd(list1)
    local even_count = 0
    local odd_count = 0
    local product = 1
    for i = 1, #list1 do
        if list1[i] % 2 == 0 then
            even_count = even_count + 1
            product = product * list1[i]
        else
            odd_count = odd_count + 1
            product = product * list1[i]
        end
    end
    if even_count > 0 and odd_count > 0 then
        return product
    else
        return 0
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = mul_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 4)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 2)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 10)
end

os.exit(lu.LuaUnit.run())