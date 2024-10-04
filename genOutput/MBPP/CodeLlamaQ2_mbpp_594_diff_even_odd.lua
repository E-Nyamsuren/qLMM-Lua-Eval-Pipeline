-- Write a function to find the difference of the first even and first odd number of a given table.
local function diff_even_odd(list1)
    local even = false
    local odd = false
    for i, v in ipairs(list1) do
        if not even and v % 2 == 0 then
            even = true
            even_index = i
        end
        if not odd and v % 2 ~= 0 then
            odd = true
            odd_index = i
        end
        if even and odd then
            break
        end
    end
    return list1[even_index] - list1[odd_index]
end

lu = require('luaunit')

function test_humaneval()
local candidate = diff_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 1)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 9)
end

os.exit(lu.LuaUnit.run())