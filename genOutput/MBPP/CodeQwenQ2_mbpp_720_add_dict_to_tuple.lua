-- Write a function to add a table to the table. The output should be a table.
local function add_dict_to_tuple(test_tup, test_dict)
    local result = {}
    for key, value in pairs(test_dict) do
        table.insert(result, key)
        table.insert(result, value)
    end
    table.insert(test_tup, result)
    return test_tup
end

lu = require('luaunit')

function test_humaneval()
local candidate = add_dict_to_tuple
    lu.assertEquals(candidate({4, 5, 6}, {['MSAM'] = 1, ['is'] = 2, ['best'] = 3}), {4, 5, 6, {['MSAM'] = 1, ['is'] = 2, ['best'] = 3}})
    lu.assertEquals(candidate({1, 2, 3}, {['UTS'] = 2, ['is'] = 3, ['Worst'] = 4}), {1, 2, 3, {['UTS'] = 2, ['is'] = 3, ['Worst'] = 4}})
    lu.assertEquals(candidate({8, 9, 10}, {['POS'] = 3, ['is'] = 4, ['Okay'] = 5}), {8, 9, 10, {['POS'] = 3, ['is'] = 4, ['Okay'] = 5}})
end

os.exit(lu.LuaUnit.run())