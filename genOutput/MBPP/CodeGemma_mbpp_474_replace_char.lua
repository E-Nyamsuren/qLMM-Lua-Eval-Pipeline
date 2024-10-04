-- Write a function to replace characters in a string.
local function replace_char(str1, ch, newch)
    local str2 = str1
    local i = 1
    while i <= #str1 do
        if str2:sub(i, i) == ch then
            str2 = str2:sub(1, i - 1) .. newch .. str2:sub(i + 1)
        end
        i = i + 1
    end
    return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = replace_char
    lu.assertEquals(candidate('polygon', 'y', 'l'), 'pollgon')
    lu.assertEquals(candidate('character', 'c', 'a'), 'aharaater')
    lu.assertEquals(candidate('python', 'l', 'a'), 'python')
end

os.exit(lu.LuaUnit.run())