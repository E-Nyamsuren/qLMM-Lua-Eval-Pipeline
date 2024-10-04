-- Write a luathon function to find the first repeated character in a given string.
local function first_repeated_char(str1)
    local str2 = str1:gsub(".", function(c) return string.format("(%s)", c) end)
    local first_repeated_char = str2:match("()%1")
    return first_repeated_char
end

lu = require('luaunit')

function test_humaneval()
local candidate = first_repeated_char
    lu.assertEquals(candidate('abcabc'), 'a')
    lu.assertEquals(candidate('abc'), None)
    lu.assertEquals(candidate('123123'), '1')
end

os.exit(lu.LuaUnit.run())