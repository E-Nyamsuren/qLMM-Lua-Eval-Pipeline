-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
    local vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'}
    local str1 = str1:gsub("[^a-zA-Z]", "")
    local vowel_str = ""
    local consonant_str = ""
    for i = 1, #str1 do
        local c = str1:sub(i,i)
        if vowels:contains(c) then
            vowel_str = c .. vowel_str
        else
            consonant_str = c .. consonant_str
        end
    end
    return vowel_str .. consonant_str
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())