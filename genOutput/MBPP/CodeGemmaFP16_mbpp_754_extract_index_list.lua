-- We say that an element is common for tables l1, l2, l3 if it appears in all three tables under the same index. Write a function to find common elements from three tables. The function should return a table.
local function extract_index_list(l1, l2, l3)
    local index_list = {}
    for i = 1, #l1 do
        if l1[i] == l2[i] and l2[i] == l3[i] then
            table.insert(index_list, i)
        end
    end
    return index_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_index_list
    lu.assertEquals(candidate({1, 1, 3, 4, 5, 6, 7}, {0, 1, 2, 3, 4, 5, 7}, {0, 1, 2, 3, 4, 5, 7}), {1, 7})
    lu.assertEquals(candidate({1, 1, 3, 4, 5, 6, 7}, {0, 1, 2, 3, 4, 6, 5}, {0, 1, 2, 3, 4, 6, 7}), {1, 6})
    lu.assertEquals(candidate({1, 1, 3, 4, 6, 5, 6}, {0, 1, 2, 3, 4, 5, 7}, {0, 1, 2, 3, 4, 5, 7}), {1, 5})
    lu.assertEquals(candidate({1, 2, 3, 4, 6, 6, 6}, {0, 1, 2, 3, 4, 5, 7}, {0, 1, 2, 3, 4, 5, 7}), {})
end

os.exit(lu.LuaUnit.run())