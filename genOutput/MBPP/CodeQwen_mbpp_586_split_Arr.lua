-- Write a luathon function to split a table at the nth eelment and add the first part to the end.
local function split_Arr(l, n)
    local first_part = {}
    local second_part = {}
    for i, v in ipairs(l) do
        if i <= n then
            table.insert(first_part, v)
        else
            table.insert(second_part, v)
        end
    end
    for i, v in ipairs(first_part) do
        table.insert(second_part, v)
    end
    return second_part
end

lu = require('luaunit')

function test_humaneval()
local candidate = split_Arr
    lu.assertEquals(candidate({12, 10, 5, 6, 52, 36}, 2), {5, 6, 52, 36, 12, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, 1), {2, 3, 4, 1})
    lu.assertEquals(candidate({0, 1, 2, 3, 4, 5, 6, 7}, 3), {3, 4, 5, 6, 7, 0, 1, 2})
end

os.exit(lu.LuaUnit.run())