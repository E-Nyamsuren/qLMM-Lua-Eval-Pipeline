-- Write a function to replace characters in a string.
local function replace_char(str1, ch, newch)
    local new_str = ""
    for i = 1, #str1 do
        if str1:sub(i, i) == ch then
            new_str = new_str .. newch
        else
            new_str = new_str .. str1:sub(i, i)
        end
    end
    return new_str
end

lu = require('luaunit')

function test_humaneval()
local candidate = replace_char
    lu.assertEquals(candidate('polygon', 'y', 'l'), 'pollgon')
    lu.assertEquals(candidate('character', 'c', 'a'), 'aharaater')
    lu.assertEquals(candidate('python', 'l', 'a'), 'python')
end

os.exit(lu.LuaUnit.run())