-- Write a function to pack consecutive duplicates of a given table elements into subtables.
local function pack_consecutive_duplicates(list1)
    local result = {}
    local current_value = list1[1]
    local current_count = 1
    local current_subtable = {}
    
    for _, value in ipairs(list1) do
        if value == current_value then
            current_count = current_count + 1
        else
            table.insert(current_subtable, current_value)
            table.insert(result, current_subtable)
            current_subtable = {}
            current_value = value
            current_count = 1
        end
    end
    
    table.insert(current_subtable, current_value)
    table.insert(result, current_subtable)
    
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = pack_consecutive_duplicates
    lu.assertEquals(candidate({0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4}), {{0, 0}, {1}, {2}, {3}, {4, 4}, {5}, {6, 6, 6}, {7}, {8}, {9}, {4, 4}})
    lu.assertEquals(candidate({10, 10, 15, 19, 18, 18, 17, 26, 26, 17, 18, 10}), {{10, 10}, {15}, {19}, {18, 18}, {17}, {26, 26}, {17}, {18}, {10}})
    lu.assertEquals(candidate({'a', 'a', 'b', 'c', 'd', 'd'}), {{'a', 'a'}, {'b'}, {'c'}, {'d', 'd'}})
end

os.exit(lu.LuaUnit.run())