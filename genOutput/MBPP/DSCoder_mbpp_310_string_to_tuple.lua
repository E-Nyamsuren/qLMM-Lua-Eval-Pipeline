-- Write a function to convert a given string to a table of characters.
local function string_to_tuple(str1)
    local t = {}
    for i = 1, #str1 do
        t[i] = str1:sub(i,i)
    end
    return t
end

lu = require('luaunit')

function test_humaneval()
local candidate = string_to_tuple
    lu.assertEquals(candidate('python 3.0'), {'p', 'y', 't', 'h', 'o', 'n', '3', '.', '0'})
    lu.assertEquals(candidate('item1'), {'i', 't', 'e', 'm', '1'})
    lu.assertEquals(candidate('15.10'), {'1', '5', '.', '1', '0'})
end

os.exit(lu.LuaUnit.run())