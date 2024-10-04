-- Write a luathon function to find the first repeated character in a given string.
local function first_repeated_char(str1)
    local str2 = str1:lower()
    for i = 1, #str2 do
        if str2:find(str2:sub(i, i), i + 1) then
            return str2:sub(i, i)
        end
    end
    return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = first_repeated_char
    lu.assertEquals(candidate('abcabc'), 'a')
    lu.assertEquals(candidate('abc'), None)
    lu.assertEquals(candidate('123123'), '1')
end

os.exit(lu.LuaUnit.run())