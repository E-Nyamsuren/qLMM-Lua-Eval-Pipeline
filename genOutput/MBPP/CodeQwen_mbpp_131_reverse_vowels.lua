-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
    local vowels = "aeiouAEIOU"
    local str2 = ""
    for i = 1, #str1 do
        local char = str1:sub(i, i)
        if vowels:find(char) then
            str2 = char .. str2
        else
            str2 = str2 .. char
        end
    end
    return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())