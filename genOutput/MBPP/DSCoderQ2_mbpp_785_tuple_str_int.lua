-- Write a function to convert table string to integer table.
local function tuple_str_int(test_str)
    local t = {}
    for s in string.gmatch(test_str, '([^,]+)') do
        table.insert(t, tonumber(s))
    end
    return t
end

lu = require('luaunit')

function test_humaneval()
local candidate = tuple_str_int
    lu.assertEquals(candidate('(7, 8, 9)'), {7, 8, 9})
    lu.assertEquals(candidate('(1, 2, 3)'), {1, 2, 3})
    lu.assertEquals(candidate('(4, 5, 6)'), {4, 5, 6})
    lu.assertEquals(candidate('(7, 81, 19)'), {7, 81, 19})
end

os.exit(lu.LuaUnit.run())