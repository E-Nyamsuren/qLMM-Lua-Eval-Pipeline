-- Write a function to check whether a table contains the given subtable or not.
local function is_sublist(l, s)
    for i = 1, #l do
        if type(l[i]) == "table" then
            if is_sublist(l[i], s) then
                return true
            end
        elseif l[i] == s then
            return true
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_sublist
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {3, 7}), false)
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {4, 3}), true)
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {1, 6}), false)
end

os.exit(lu.LuaUnit.run())