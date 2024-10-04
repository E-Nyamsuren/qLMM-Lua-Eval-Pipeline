-- Write a function to check if a string is present as a substring in a given table of string values.
local function find_substring(str1, sub_str)
    local str1_len = string.len(str1)
    local sub_str_len = string.len(sub_str)
    local i, j
    for i = 1, str1_len - sub_str_len + 1 do
        for j = 1, sub_str_len do
            if string.sub(str1, i, i + j - 1) ~= sub_str then
                break
            end
        end
        if j == sub_str_len + 1 then
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