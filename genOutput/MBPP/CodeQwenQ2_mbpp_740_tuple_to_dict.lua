-- Write a function to convert the given table to a key-value table using adjacent elements. https://www.geeksforgeeks.org/luathon-convert-table-to-adjacent-pair-table/
local function tuple_to_dict(test_tup)
    local res = {}
    for i = 1, #test_tup, 2 do
        res[test_tup[i]] = test_tup[i + 1]
    end
    return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = tuple_to_dict
    lu.assertEquals(candidate({1, 5, 7, 10, 13, 5}), {[1] = 5, [7] = 10, [13] = 5})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}), {[1] = 2, [3] = 4, [5] = 6})
    lu.assertEquals(candidate({7, 8, 9, 10, 11, 12}), {[7] = 8, [9] = 10, [11] = 12})
end

os.exit(lu.LuaUnit.run())