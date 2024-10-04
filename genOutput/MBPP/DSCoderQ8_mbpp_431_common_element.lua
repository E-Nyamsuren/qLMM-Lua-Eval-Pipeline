-- Write a function that takes two tables and returns true if they have at least one common element.
local function common_element(list1, list2)
    for i, v in pairs(list1) do
        if list2[v] then
            return true
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = common_element
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {5, 6, 7, 8, 9}), true)
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {6, 7, 8, 9}), None)
    lu.assertEquals(candidate({'a', 'b', 'c'}, {'d', 'b', 'e'}), true)
end

os.exit(lu.LuaUnit.run())