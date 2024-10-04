-- Write a function to check whether a table contains the given subtable or not.
local function is_sublist(l, s)
    for i = 1, #l - #s + 1 do
        if #s == 0 then
            return true
        end
        for j = 1, #s do
            if l[i + j - 1] ~= s[j] then
                break
            end
            if j == #s then
                return true
            end
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