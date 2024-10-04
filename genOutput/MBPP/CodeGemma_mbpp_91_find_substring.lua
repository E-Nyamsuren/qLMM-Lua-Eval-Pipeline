-- Write a function to check if a string is present as a substring in a given table of string values.
local function find_substring(str1, sub_str)
    local len1 = #str1
    local len2 = #sub_str
    local i = 1
    local j = 1
    while i <= len1 and j <= len2 do
        if str1:sub(i, i) == sub_str:sub(j, j) then
            i = i + 1
            j = j + 1
        else
            i = i - j + 2
            j = 1
        end
    end
    if j > len2 then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_substring
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'ack'), true)
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'abc'), false)
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'ange'), true)
end

os.exit(lu.LuaUnit.run())