-- Write a function to perform index wise multiplication of table elements in the given two tables.
local function index_multiplication(test_tup1, test_tup2)
    local index_multiplication_list = {}
    for i = 1, #test_tup1 do
        index_multiplication_list[i] = test_tup1[i] * test_tup2[i]
    end
    return index_multiplication_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = index_multiplication
    lu.assertEquals(candidate({{1, 3}, {4, 5}, {2, 9}, {1, 10}}, {{6, 7}, {3, 9}, {1, 1}, {7, 3}}), {{6, 21}, {12, 45}, {2, 9}, {7, 30}})
    lu.assertEquals(candidate({{2, 4}, {5, 6}, {3, 10}, {2, 11}}, {{7, 8}, {4, 10}, {2, 2}, {8, 4}}), {{14, 32}, {20, 60}, {6, 20}, {16, 44}})
    lu.assertEquals(candidate({{3, 5}, {6, 7}, {4, 11}, {3, 12}}, {{8, 9}, {5, 11}, {3, 3}, {9, 5}}), {{24, 45}, {30, 77}, {12, 33}, {27, 60}})
end

os.exit(lu.LuaUnit.run())