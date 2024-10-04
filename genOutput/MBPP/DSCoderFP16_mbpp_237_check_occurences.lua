-- Write a function that takes in a table of tables and returns a table mapping each unique table to the number of times it occurs in the table.
local function check_occurences(test_list)
    local table_map = {}
    for _, table in ipairs(test_list) do
        for _, row in ipairs(table) do
            for _, value in ipairs(row) do
                if table_map[value] then
                    table_map[value] = table_map[value] + 1
                else
                    table_map[value] = 1
                end
            end
        end
    end
    return table_map
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_occurences
    lu.assertEquals(candidate({{3, 1}, {1, 3}, {2, 5}, {5, 2}, {6, 3}}), {[{1, 3}] = 2, [{2, 5}] = 2, [{3, 6}] = 1})
    lu.assertEquals(candidate({{4, 2}, {2, 4}, {3, 6}, {6, 3}, {7, 4}}), {[{2, 4}] = 2, [{3, 6}] = 2, [{4, 7}] = 1})
    lu.assertEquals(candidate({{13, 2}, {11, 23}, {12, 25}, {25, 12}, {16, 23}}), {[{2, 13}] = 1, [{11, 23}] = 1, [{12, 25}] = 2, [{16, 23}] = 1})
end

os.exit(lu.LuaUnit.run())