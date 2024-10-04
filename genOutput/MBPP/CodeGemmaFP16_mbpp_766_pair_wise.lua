-- Write a function to return a table of all pairs of consecutive items in a given table.
local function pair_wise(l1)
    local l2 = {}
    for i = 1, #l1 do
        l2[i] = {}
        l2[i][1] = l1[i]
        l2[i][2] = l1[i+1]
    end
    return l2
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = pair_wise
    lu.assertEquals(candidate({1, 1, 2, 3, 3, 4, 4, 5}), {{1, 1}, {1, 2}, {2, 3}, {3, 3}, {3, 4}, {4, 4}, {4, 5}})
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), {{1, 5}, {5, 7}, {7, 9}, {9, 10}})
    lu.assertEquals(candidate({5, 1, 9, 7, 10}), {{5, 1}, {1, 9}, {9, 7}, {7, 10}})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), {{1, 2}, {2, 3}, {3, 4}, {4, 5}, {5, 6}, {6, 7}, {7, 8}, {8, 9}, {9, 10}})
end

os.exit(lu.LuaUnit.run())