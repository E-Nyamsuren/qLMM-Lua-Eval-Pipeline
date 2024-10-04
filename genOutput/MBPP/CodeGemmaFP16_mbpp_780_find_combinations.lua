-- Write a function to find the combinations of sums with tables in the given table table. https://www.geeksforgeeks.org/luathon-combinations-of-sum-with-tables-in-table-table/
local function find_combinations(test_list)
    local combinations = {}
    local function find_combinations_helper(test_list, combinations, current_combination, current_sum)
        if current_sum == 0 then
            table.insert(combinations, current_combination)
            return
        end
        for i = 1, #test_list do
            local item = test_list[i]
            if item <= current_sum then
                local new_combination = table.copy(current_combination)
                table.insert(new_combination, item)
                find_combinations_helper(test_list, combinations, new_combination, current_sum - item)
            end
        end
    end
    find_combinations_helper(test_list, combinations, {}, test_list[1])
    return combinations
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_combinations
    lu.assertEquals(candidate({{2, 4}, {6, 7}, {5, 1}, {6, 10}}), {{8, 11}, {7, 5}, {8, 14}, {11, 8}, {12, 17}, {11, 11}})
    lu.assertEquals(candidate({{3, 5}, {7, 8}, {6, 2}, {7, 11}}), {{10, 13}, {9, 7}, {10, 16}, {13, 10}, {14, 19}, {13, 13}})
    lu.assertEquals(candidate({{4, 6}, {8, 9}, {7, 3}, {8, 12}}), {{12, 15}, {11, 9}, {12, 18}, {15, 12}, {16, 21}, {15, 15}})
end

os.exit(lu.LuaUnit.run())