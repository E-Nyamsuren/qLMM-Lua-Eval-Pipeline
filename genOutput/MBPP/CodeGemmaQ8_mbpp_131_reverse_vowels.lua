-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
    local vowels = "aeiouAEIOU"
    local str = str1
    local str_rev = ""
    local str_rev_vowels = ""
    local str_rev_consonants = ""
    local str_rev_vowels_consonants = ""
    local str_rev_vowels_consonants_str = ""
    local str_rev_vowels_consonants_str_rev = ""
    local str_rev_vowels_consonants_str_rev_vowels = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants_str = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev_vowels = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev_vowels_consonants = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev_vowels_consonants_str = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev_vowels = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev_vowels_consonants = ""
    local str_rev_vowels_consonants_str_rev_vowels_consonants_str_rev

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())