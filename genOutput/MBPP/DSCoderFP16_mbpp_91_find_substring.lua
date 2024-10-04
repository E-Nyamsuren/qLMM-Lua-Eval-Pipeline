-- Write a function to check if a string is present as a substring in a given table of string values.
local function find_substring(str1, sub_str)
    return string.find(str1, sub_str) ~= nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_substring
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'ack'), true)
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'abc'), false)
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'ange'), true)
end

os.exit(lu.LuaUnit.run())