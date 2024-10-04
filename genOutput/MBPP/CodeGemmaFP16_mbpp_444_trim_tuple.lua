-- Write a function to trim each table by k in the given tables.
local function trim_tuple(test_list, K)
    local new_list = {}
    for i = 1, #test_list do
        local tuple = test_list[i]
        local new_tuple = {}
        for j = 1, #tuple do
            local value = tuple[j]
            if j % K ~= 0 then
                table.insert(new_tuple, value)
            end
        end
        table.insert(new_list, new_tuple)
    end
    return new_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = trim_tuple
    lu.assertEquals(candidate({{5, 3, 2, 1, 4}, {3, 4, 9, 2, 1}, {9, 1, 2, 3, 5}, {4, 8, 2, 1, 7}}, 2), {{2}, {9}, {2}, {2}})
    lu.assertEquals(candidate({{5, 3, 2, 1, 4}, {3, 4, 9, 2, 1}, {9, 1, 2, 3, 5}, {4, 8, 2, 1, 7}}, 1), {{3, 2, 1}, {4, 9, 2}, {1, 2, 3}, {8, 2, 1}})
    lu.assertEquals(candidate({{7, 8, 4, 9}, {11, 8, 12, 4}, {4, 1, 7, 8}, {3, 6, 9, 7}}, 1), {{8, 4}, {8, 12}, {1, 7}, {6, 9}})
end

os.exit(lu.LuaUnit.run())