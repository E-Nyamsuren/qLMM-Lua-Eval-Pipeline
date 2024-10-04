-- Write a function to add a table to the table. The output should be a table.
local function add_dict_to_tuple(test_tup, test_dict)
    local new_tup = {}
    for i, v in ipairs(test_tup) do
        if type(v) == "table" then
            new_tup[i] = add_dict_to_tuple(v, test_dict)
        else
            new_tup[i] = v
        end
    end
    for k, v in pairs(test_dict) do
        new_tup[#new_tup + 1] = v
    end
    return new_tup
end

lu = require('luaunit')

function test_humaneval()
local candidate = add_dict_to_tuple
    lu.assertEquals(candidate({4, 5, 6}, {['MSAM'] = 1, ['is'] = 2, ['best'] = 3}), {4, 5, 6, {['MSAM'] = 1, ['is'] = 2, ['best'] = 3}})
    lu.assertEquals(candidate({1, 2, 3}, {['UTS'] = 2, ['is'] = 3, ['Worst'] = 4}), {1, 2, 3, {['UTS'] = 2, ['is'] = 3, ['Worst'] = 4}})
    lu.assertEquals(candidate({8, 9, 10}, {['POS'] = 3, ['is'] = 4, ['Okay'] = 5}), {8, 9, 10, {['POS'] = 3, ['is'] = 4, ['Okay'] = 5}})
end

os.exit(lu.LuaUnit.run())