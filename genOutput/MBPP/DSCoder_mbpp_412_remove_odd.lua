-- Write a luathon function to remove odd numbers from a given table.
local function remove_odd(l)
    local new_list = {}
    for i = 1, #l do
        if l[i] % 2 == 0 then
            table.insert(new_list, l[i])
        end
    end
    return new_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_odd
    lu.assertEquals(candidate({1, 2, 3}), {2})
    lu.assertEquals(candidate({2, 4, 6}), {2, 4, 6})
    lu.assertEquals(candidate({10, 20, 3}), {10, 20})
end

os.exit(lu.LuaUnit.run())