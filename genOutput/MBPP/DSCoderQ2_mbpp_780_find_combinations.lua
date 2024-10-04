-- Write a function to find the combinations of sums with tables in the given table table. https://www.geeksforgeeks.org/luathon-combinations-of-sum-with-tables-in-table-table/
local function find_combinations(test_list)
    local result = {}
    local len = #test_list
    for i = 1, len do
        for j = i, len do
            table.insert(result, {test_list[i], test_list[j]})
       
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_combinations
    lu.assertEquals(candidate({{2, 4}, {6, 7}, {5, 1}, {6, 10}}), {{8, 11}, {7, 5}, {8, 14}, {11, 8}, {12, 17}, {11, 11}})
    lu.assertEquals(candidate({{3, 5}, {7, 8}, {6, 2}, {7, 11}}), {{10, 13}, {9, 7}, {10, 16}, {13, 10}, {14, 19}, {13, 13}})
    lu.assertEquals(candidate({{4, 6}, {8, 9}, {7, 3}, {8, 12}}), {{12, 15}, {11, 9}, {12, 18}, {15, 12}, {16, 21}, {15, 15}})
end

os.exit(lu.LuaUnit.run())