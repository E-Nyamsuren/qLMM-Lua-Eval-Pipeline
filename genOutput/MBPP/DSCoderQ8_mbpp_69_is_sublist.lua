-- Write a function to check whether a table contains the given subtable or not.
local function is_sublist(l, s)
    local len_l = #l
    local len_s = #s
    if len_s > len_l then
        return false
    end
    for i = 1, len_l - len_s + 1 do
        local match = true
        for j = 1, len_s do
            if l[i+j-1] ~= s[j] then
                match = false
                break
            end
        end
        if match then
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