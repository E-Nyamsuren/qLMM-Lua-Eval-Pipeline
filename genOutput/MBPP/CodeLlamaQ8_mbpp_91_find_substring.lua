-- Write a function to check if a string is present as a substring in a given table of string values.
local function find_substring(str1, sub_str)
    local str_len = string.len(str1)
    local sub_str_len = string.len(sub_str)
    for i = 1, str_len - sub_str_len + 1 do
        if string.sub(str1, i, i + sub_str_len - 1) == sub_str then
            return true
        end
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