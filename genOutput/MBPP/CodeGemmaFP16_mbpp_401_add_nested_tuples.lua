-- Write a function to perform index wise addition of table elements in the given two nested tables.
local function add_nested_tuples(test_tup1, test_tup2)
    local result_tup = {}
    for i = 1, #test_tup1 do
        local tuple1 = test_tup1[i]
        local tuple2 = test_tup2[i]
        local tuple_sum = {}
        for j = 1, #tuple1 do
            local element1 = tuple1[j]
            local element2 = tuple2[j]
            local sum = element1 + element2
            table.insert(tuple_sum, sum)
        end
        table.insert(result_tup, tuple_sum)
    end
    return result_tup
end

lu = require('luaunit')

function test_humaneval()
local candidate = add_nested_tuples
    lu.assertEquals(candidate({{1, 3}, {4, 5}, {2, 9}, {1, 10}}, {{6, 7}, {3, 9}, {1, 1}, {7, 3}}), {{7, 10}, {7, 14}, {3, 10}, {8, 13}})
    lu.assertEquals(candidate({{2, 4}, {5, 6}, {3, 10}, {2, 11}}, {{7, 8}, {4, 10}, {2, 2}, {8, 4}}), {{9, 12}, {9, 16}, {5, 12}, {10, 15}})
    lu.assertEquals(candidate({{3, 5}, {6, 7}, {4, 11}, {3, 12}}, {{8, 9}, {5, 11}, {3, 3}, {9, 5}}), {{11, 14}, {11, 18}, {7, 14}, {12, 17}})
end

os.exit(lu.LuaUnit.run())