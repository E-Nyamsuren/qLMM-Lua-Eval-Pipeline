-- Write a function to find the difference of the first even and first odd number of a given table.
local function diff_even_odd(list1)
    local first_even = nil
    local first_odd = nil
    for _, v in ipairs(list1) do
        if v % 2 == 0 then
            if first_even == nil then
                first_even = v
            end
        else
            if first_odd == nil then
                first_odd = v
            end
        end
        if first_even ~= nil and first_odd ~= nil then
            break
        end
    end
    if first_even == nil or first_odd == nil then
        return nil
    else
        return first_even - first_odd
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