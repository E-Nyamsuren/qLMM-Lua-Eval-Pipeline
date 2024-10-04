-- Write a function to maximize the given two tables.
local function maximize_elements(test_tup1, test_tup2)
    local test_tup1_len = #test_tup1
    local test_tup2_len = #test_tup2
    local test_tup1_max = test_tup1[test_tup1_len]
    local test_tup2_max = test_tup2[test_tup2_len]
    local test_tup1_max_index = test_tup1_len
    local test_tup2_max_index = test_tup2_len
    for i = test_tup1_len, 1, -1 do
        if test_tup1[i] > test_tup1_max then
            test_tup1_max = test_tup1[i]
            test_tup1_max_index = i
        end
    end
    for i = test_tup2_len, 1, -1 do
        if test_tup2[i] > test_tup2_max then
            test_tup2_max = test_tup2[i]
            test_tup2_max_index = i
        end
    end
    if test_tup1_max_index < test_tup2_max_index then
        return test_tup2
    elseif test_tup1_max_index > test_tup2_max_index then
        return test_tup1
    else
        return test_tup1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = maximize_elements
    lu.assertEquals(candidate({{1, 3}, {4, 5}, {2, 9}, {1, 10}}, {{6, 7}, {3, 9}, {1, 1}, {7, 3}}), {{6, 7}, {4, 9}, {2, 9}, {7, 10}})
    lu.assertEquals(candidate({{2, 4}, {5, 6}, {3, 10}, {2, 11}}, {{7, 8}, {4, 10}, {2, 2}, {8, 4}}), {{7, 8}, {5, 10}, {3, 10}, {8, 11}})
    lu.assertEquals(candidate({{3, 5}, {6, 7}, {4, 11}, {3, 12}}, {{8, 9}, {5, 11}, {3, 3}, {9, 5}}), {{8, 9}, {6, 11}, {4, 11}, {9, 12}})
end

os.exit(lu.LuaUnit.run())