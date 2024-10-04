-- Write a function to create a new table from the given string and table.
local function new_tuple(test_list, test_str)
    local tuple_list = {}
    for i, v in ipairs(test_list) do
        table.insert(tuple_list, {v, test_str})
    end
    return tuple_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = new_tuple
    lu.assertEquals(candidate({'WEB', 'is'}, 'best'), {'WEB', 'is', 'best'})
    lu.assertEquals(candidate({'We', 'are'}, 'Developers'), {'We', 'are', 'Developers'})
    lu.assertEquals(candidate({'Part', 'is'}, 'Wrong'), {'Part', 'is', 'Wrong'})
end

os.exit(lu.LuaUnit.run())