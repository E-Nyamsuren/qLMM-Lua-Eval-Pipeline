-- Write a function to check if a string is present as a substring in a given table of string values.
local function find_substring(str1, sub_str)
    local len1 = #str1
    local len2 = #sub_str
    local i, j = 1, 1
    while i <= len1 do
        if str1:sub(i, i + len2 - 1) == sub_str then
            return true
        end
        i = i + 1
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_substring
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'ack'), true)
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'abc'), false)
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'ange'), true)
end

os.exit(lu.LuaUnit.run())