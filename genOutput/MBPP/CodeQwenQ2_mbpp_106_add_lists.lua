-- Write a function to append the given table to the given tables.
local function add_lists(test_list, test_tup)
    for i in ipairs(test_tup) do
        table.insert(test_list, i)
    end
    return test_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = add_lists
    lu.assertEquals(candidate({5, 6, 7}, {9, 10}), {9, 10, 5, 6, 7})
    lu.assertEquals(candidate({6, 7, 8}, {10, 11}), {10, 11, 6, 7, 8})
    lu.assertEquals(candidate({7, 8, 9}, {11, 12}), {11, 12, 7, 8, 9})
end

os.exit(lu.LuaUnit.run())