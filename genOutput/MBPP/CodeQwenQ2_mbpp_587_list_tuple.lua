-- Write a function to convert a table to a table.
local function list_tuple(listx)
    local tuplex = {}
    for i, v in ipairs(listx) do
        tuplex[i] = v
    end
    return tuplex
end

lu = require('luaunit')

function test_humaneval()
local candidate = list_tuple
    lu.assertEquals(candidate({5, 10, 7, 4, 15, 3}), {5, 10, 7, 4, 15, 3})
    lu.assertEquals(candidate({2, 4, 5, 6, 2, 3, 4, 4, 7}), {2, 4, 5, 6, 2, 3, 4, 4, 7})
    lu.assertEquals(candidate({58, 44, 56}), {58, 44, 56})
end

os.exit(lu.LuaUnit.run())