-- Write a function to find the difference of the first even and first odd number of a given table.
local function diff_even_odd(list1)
    local even = false
    local odd = false
    local first_even = nil
    local first_odd = nil
    for i, v in ipairs(list1) do
        if even == false and odd == false then
            if v % 2 == 0 then
                even = true
                first_even = v
            else
                odd = true
                first_odd = v
            end
        else
            if even == true then
                if v % 2 ~= 0 then
                    return v - first_even
                end
            else
                if v % 2 == 0 then
                    return v - first_odd
                end
            end
        end
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = diff_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 1)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 9)
end

os.exit(lu.LuaUnit.run())