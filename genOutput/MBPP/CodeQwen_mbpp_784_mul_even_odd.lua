-- Write a function to find the product of first even and odd number of a given table.
local function mul_even_odd(list1)
    local even_num = 0
    local odd_num = 0
    local even_found = false
    local odd_found = false
    for i, num in ipairs(list1) do
        if num % 2 == 0 then
            even_num = num
            even_found = true
        else
            odd_num = num
            odd_found = true
        end
        if even_found and odd_found then
            break
        end
    end
    if even_found and odd_found then
        return even_num * odd_num
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