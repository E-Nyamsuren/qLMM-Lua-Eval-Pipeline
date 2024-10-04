-- Write a function to drop empty items from a given table.
local function drop_empty(dict1)
    for key, value in pairs(dict1) do
        if value == "" then
            dict1[key] = nil
        end
    end
    return dict1
end

lu = require('luaunit')

function test_humaneval()
local candidate = drop_empty
    lu.assertEquals(candidate({['c1'] = 'Red', ['c2'] = 'Green', ['c3'] = None}), {['c1'] = 'Red', ['c2'] = 'Green'})
    lu.assertEquals(candidate({['c1'] = 'Red', ['c2'] = None, ['c3'] = None}), {['c1'] = 'Red'})
    lu.assertEquals(candidate({['c1'] = None, ['c2'] = 'Green', ['c3'] = None}), {['c2'] = 'Green'})
end

os.exit(lu.LuaUnit.run())