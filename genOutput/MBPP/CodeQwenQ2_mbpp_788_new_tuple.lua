-- Write a function to create a new table from the given string and table.
local function new_tuple(test_list, test_str)
    local result = {}
    for i in ipairs(test_list) do
        result[i] = test_str .. tostring(i)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = new_tuple
    lu.assertEquals(candidate({'WEB', 'is'}, 'best'), {'WEB', 'is', 'best'})
    lu.assertEquals(candidate({'We', 'are'}, 'Developers'), {'We', 'are', 'Developers'})
    lu.assertEquals(candidate({'Part', 'is'}, 'Wrong'), {'Part', 'is', 'Wrong'})
end

os.exit(lu.LuaUnit.run())