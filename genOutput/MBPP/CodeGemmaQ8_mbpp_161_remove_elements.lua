-- Write a function to remove all elements from a given table present in another table.
local function remove_elements(list1, list2)
    local list = {}
    for i = 1, #list1 do
        local found = false
        for j = 1, #list2 do
            if list1[i] == list2[j] then
                found = true
                break
            end
        end
        if not found then
            table.insert(list, list1[i])
        end
    end
    return list
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_elements
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, {2, 4, 6, 8}), {1, 3, 5, 7, 9, 10})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, {1, 3, 5, 7}), {2, 4, 6, 8, 9, 10})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, {5, 7}), {1, 2, 3, 4, 6, 8, 9, 10})
end

os.exit(lu.LuaUnit.run())