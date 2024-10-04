-- Write a function to check whether a table contains the given subtable or not.
local function is_sublist(l, s)
    local i, j = 1, 1
    while i <= #l and j <= #s do
        if l[i] == s[j] then
            i = i + 1
            j = j + 1
        else
            i = i + 1
            j = 1
        end
    end
    return j > #s
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_sublist
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {3, 7}), false)
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {4, 3}), true)
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {1, 6}), false)
end

os.exit(lu.LuaUnit.run())