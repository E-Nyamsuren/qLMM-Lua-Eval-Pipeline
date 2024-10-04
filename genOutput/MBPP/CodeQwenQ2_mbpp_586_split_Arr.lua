-- Write a luathon function to split a table at the nth eelment and add the first part to the end.
local function split_Arr(l, n)
    local first_part = {}
    local second_part = {}
    for i = 1, #l do
        if i <= n then
            first_part[#first_part + 1] = l[i]
        else
            second_part[#second_part + 1] = l[i]
        end
    end
    for i = 1, #first_part do
        l[#l + 1] = first_part[i]
    end
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