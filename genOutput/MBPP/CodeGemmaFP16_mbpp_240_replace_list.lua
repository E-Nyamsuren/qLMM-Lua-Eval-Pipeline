-- Write a function that takes in two tables and replaces the last element of the first table with the elements of the second table.
local function replace_list(list1, list2)
    local last_element = table.remove(list1)
    table.insert(list1, last_element)
    for _, element in ipairs(list2) do
        table.insert(list1, element)
    end
    return list1
end

lu = require('luaunit')

function test_humaneval()
local candidate = replace_list
    lu.assertEquals(candidate({1, 3, 5, 7, 9, 10}, {2, 4, 6, 8}), {1, 3, 5, 7, 9, 2, 4, 6, 8})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {5, 6, 7, 8}), {1, 2, 3, 4, 5, 6, 7, 8})
    lu.assertEquals(candidate({'red', 'blue', 'green'}, {'yellow'}), {'red', 'blue', 'yellow'})
end

os.exit(lu.LuaUnit.run())