-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
    local vowels = {}
    local str2 = ""
    for i = 1, #str1 do
        local char = string.sub(str1, i, i)
        if char:match("[aeiouAEIOU]") then
            table.insert(vowels, char)
        end
    end
    for i = #vowels, 1, -1 do
        str2 = str2 .. vowels[i]
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