-- Write a function to extract the elementwise and tables from the given two tables.
local function and_tuples(test_tup1, test_tup2)
    local and_tup = {}
    for i, v in ipairs(test_tup1) do
        and_tup[i] = v and test_tup2[i]
    end
    return and_tup
end

lu = require('luaunit')

function test_humaneval()
local candidate = and_tuples
    lu.assertEquals(candidate({10, 4, 6, 9}, {5, 2, 3, 3}), {0, 0, 2, 1})
    lu.assertEquals(candidate({1, 2, 3, 4}, {5, 6, 7, 8}), {1, 2, 3, 0})
    lu.assertEquals(candidate({8, 9, 11, 12}, {7, 13, 14, 17}), {0, 9, 10, 0})
end

os.exit(lu.LuaUnit.run())