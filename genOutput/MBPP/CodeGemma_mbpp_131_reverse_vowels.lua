-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
    local vowels = {"a","e","i","o","u","A","E","I","O","U"}
    local str = str1
    local str2 = ""
    local str3 = ""
    local str4 = ""
    local str5 = ""
    local str6 = ""
    local str7 = ""
    local str8 = ""
    local str9 = ""
    local str10 = ""
    local str11 = ""
    local str12 = ""
    local str13 = ""
    local str14 = ""
    local str15 = ""
    local str16 = ""
    local str17 = ""
    local str18 = ""
    local str19 = ""
    local str20 = ""
    local str21 = ""
    local str22 = ""
    local str23 = ""
    local str24 = ""
    local str25 = ""
    local str26 = ""
    local str27 = ""
    local str28 = ""
    local str29 = ""
    local str30 = ""
    local str31 = ""
    local str32 = ""
    local str33 = ""
    local str34 = ""
    local str35 = ""
    local str36 = ""
    local str37 = ""
    local str38 = ""
    local str39 = ""
    local str40 = ""
    local str41 = ""
    local str42 = ""
    local str43 = ""
    local str44 = ""
    local str45 = ""
    local str46 = ""
    local str47 = ""
    local str48 = ""
    local str49 = ""
    local str50 = ""
    local str51 = ""
    local str52 = ""
    local str53 = ""
    local str54 = ""
    local str55 = ""
    local str56 = ""
    local str57 = ""
    local str

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())