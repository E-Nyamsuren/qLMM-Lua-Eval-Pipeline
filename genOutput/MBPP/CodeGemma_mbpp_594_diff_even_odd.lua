-- Write a function to find the difference of the first even and first odd number of a given table.
local function diff_even_odd(list1)
    local even = 0
    local odd = 0
    for i = 1, #list1 do
        if list1[i] % 2 == 0 then
            even = list1[i]
            break
        end
    end
    for i = 1, #list1 do
        if list1[i] % 2 == 1 then
            odd = list1[i]
            break
        end
    end
    return even - odd
end
print(diff_even_odd({1,2,3,4,5,6,7,8,9,10}))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = diff_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 1)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 9)
end

os.exit(lu.LuaUnit.run())