-- Write a luathon function to split a table at the nth eelment and add the first part to the end.
local function split_Arr(l, n)
    if n <= 0 or n > #l then
        return l
    end
    local first_part = {}
    for i = 1, n do
        table.insert(first_part, table.remove(l, i))
    end
    table.insert(l, 1, table.concat(first_part, ""))
    return l
end

lu = require('luaunit')

function test_humaneval()
local candidate = split_Arr
    lu.assertEquals(candidate({12, 10, 5, 6, 52, 36}, 2), {5, 6, 52, 36, 12, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, 1), {2, 3, 4, 1})
    lu.assertEquals(candidate({0, 1, 2, 3, 4, 5, 6, 7}, 3), {3, 4, 5, 6, 7, 0, 1, 2})
end

os.exit(lu.LuaUnit.run())