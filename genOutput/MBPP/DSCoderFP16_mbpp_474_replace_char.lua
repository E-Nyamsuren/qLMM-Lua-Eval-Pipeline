-- Write a function to replace characters in a string.
local function replace_char(str1, ch, newch)

    -- Create a new string
    local str2 = ''

lu = require('luaunit')

function test_humaneval()
local candidate = replace_char
    lu.assertEquals(candidate('polygon', 'y', 'l'), 'pollgon')
    lu.assertEquals(candidate('character', 'c', 'a'), 'aharaater')
    lu.assertEquals(candidate('python', 'l', 'a'), 'python')
end

os.exit(lu.LuaUnit.run())