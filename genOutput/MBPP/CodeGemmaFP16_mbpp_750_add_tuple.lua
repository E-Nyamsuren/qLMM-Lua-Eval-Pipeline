-- Write a function to add the given table to the given table.
local function add_tuple(test_list, test_tup)
    local new_list = test_list
    local new_tup = test_tup
    for i = 1, #new_tup do
        new_list[#new_list + 1] = new_tup[i]
    end
    return new_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = add_tuple
    lu.assertEquals(candidate({5, 6, 7}, {9, 10}), {5, 6, 7, 9, 10})
    lu.assertEquals(candidate({6, 7, 8}, {10, 11}), {6, 7, 8, 10, 11})
    lu.assertEquals(candidate({7, 8, 9}, {11, 12}), {7, 8, 9, 11, 12})
end

os.exit(lu.LuaUnit.run())