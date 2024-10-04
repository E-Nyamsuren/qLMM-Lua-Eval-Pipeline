-- Write a luathon function to find the first repeated character in a given string.
local function first_repeated_char(str1)
    local str2 = {}
    for i = 1, #str1 do
        if str2[str1:sub(i, i)] then
            return str1:sub(i, i)
        else
            str2[str1:sub(i, i)] = true
        end
    end
end
print(first_repeated_char("abcabc"))


lu = require('luaunit')

function test_humaneval()
local candidate = first_repeated_char
    lu.assertEquals(candidate('abcabc'), 'a')
    lu.assertEquals(candidate('abc'), None)
    lu.assertEquals(candidate('123123'), '1')
end

os.exit(lu.LuaUnit.run())