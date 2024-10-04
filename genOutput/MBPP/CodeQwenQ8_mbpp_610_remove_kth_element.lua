-- Write a luathon function which takes a table and returns a table with the same elements, but the k'th element removed.
local function remove_kth_element(list1, L)
    -- Check if L is a valid index
    if L < 1 or L > #list1 then
        error("Index out of range")
    end
    
    -- Create a new table with the same elements as list1, except for the k'th element
    local new_list = {}
    for i, v in ipairs(list1) do
        if i ~= L then
            table.insert(new_list, v)
        end
    end
    
    return new_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_kth_element
    lu.assertEquals(candidate({1, 1, 2, 3, 4, 4, 5, 1}, 3), {1, 1, 3, 4, 4, 5, 1})
    lu.assertEquals(candidate({0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4}, 4), {0, 0, 1, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4})
    lu.assertEquals(candidate({10, 10, 15, 19, 18, 18, 17, 26, 26, 17, 18, 10}, 5), {10, 10, 15, 19, 18, 17, 26, 26, 17, 18, 10})
end

os.exit(lu.LuaUnit.run())