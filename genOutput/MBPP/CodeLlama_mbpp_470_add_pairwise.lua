-- Write a function to find the pairwise addition of the neighboring elements of the given table.
local function add_pairwise(test_tup)
    local result = {}
    for i = 1, #test_tup - 1 do
        result[i] = test_tup[i] + test_tup[i + 1]
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = add_pairwise
    lu.assertEquals(candidate({1, 5, 7, 8, 10}), {6, 12, 15, 18})
    lu.assertEquals(candidate({2, 6, 8, 9, 11}), {8, 14, 17, 20})
    lu.assertEquals(candidate({3, 7, 9, 10, 12}), {10, 16, 19, 22})
end

os.exit(lu.LuaUnit.run())