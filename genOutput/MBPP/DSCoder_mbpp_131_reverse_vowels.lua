-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
    local vowels = "aeiou"
    local str = ""
    local vowel_list = {}
    local count = 1

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())