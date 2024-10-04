-- Write a luathon function that returns the number of integer elements in a given table.
local function count_integer(list1)
    local count = 0
    for i, v in pairs(list1) do
        if type(v) == "number" then
            count = count + 1
        end
    end
    return count
end
print(count_integer({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}))
print(count_integer({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}))
print(count_integer({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", true, false, nil, {}, function() end}))
print(count_integer({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", true, false, nil, {}, function() end, 1, 2, 3, 4, 5, 6, 7, 8, 9

lu = require('luaunit')

function test_humaneval()
local candidate = count_integer
    lu.assertEquals(candidate({1, 2, 'abc', 1.2}), 2)
    lu.assertEquals(candidate({1, 2, 3}), 3)
    lu.assertEquals(candidate({1, 1.2, 4, 5.1}), 2)
end

os.exit(lu.LuaUnit.run())