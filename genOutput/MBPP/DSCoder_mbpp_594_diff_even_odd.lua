-- Write a function to find the difference of the first even and first odd number of a given table.
local function diff_even_odd(list1)
    local even_num, odd_num = nil, nil
    for i = 1, #list1 do
        if list1[i] % 2 == 0 and even_num == nil then
            even_num = list1[i]
        elseif list1[i] % 2 ~= 0 and odd_num == nil then
            odd_num = list1[i]
        end
        if even_num ~= nil and odd_num ~= nil then
            return even_num - odd_num
        end
    end
    return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = diff_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 1)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 9)
end

os.exit(lu.LuaUnit.run())