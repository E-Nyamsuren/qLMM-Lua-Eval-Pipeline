-- Write a function that matches a string that has an 'a' followed by anything, ending in 'b'.
local function text_starta_endb(text)
  return text:match("a.*b$")
end
print(text_starta_endb("abc")) -- Should print "abc"
print(text_starta_endb("acb")) -- Should print nil
print(text_starta_endb("a")) -- Should print nil
print(text_starta_endb("ab")) -- Should print "ab"
print(text_starta_endb("aab")) -- Should print "aab"
print(text_starta_endb("ba")) -- Should print nil
print(text_starta_endb("bba")) -- Should print nil
print(text_starta_endb("aabbb")) -- Should print "aabbb"
print(text_starta_endb("abbb")) -- Should print nil
print(text_starta_endb("aabbbb")) -- Should print "aabbbb"
print(text_starta_endb("abbbb")) -- Should print nil
print(text_starta_endb("aabbbbb")) -- Should print "aabbbbb"
print(text_starta_endb("abbbbb")) -- Should print nil
print(text_starta_endb("aabbbbbb")) -- Should print "aabbbbbb"
print(text_starta_endb("abbbbbb")) -- Should print nil
print(text_starta_endb("aabbbbbbb")) -- Should print "aabbbbbbb"
print(text_starta_endb("abbbbbbb")) -- Should print nil
print(text_starta_endb("aabbbbbbbb")) -- Should print "aabbbbbbbb"
print(text_starta_endb("abbbbbbbb")) -- Should print nil
print(text_starta_endb("aabbbbbbbbb")) -- Should print "aabbbbbbbbb"
print(text_starta_endb("abbbbbbbbb")) -- Should print nil
print(text_starta_endb

lu = require('luaunit')

function test_humaneval()
local candidate = text_starta_endb
    lu.assertEquals(candidate('aabbbb'), true)
    lu.assertEquals(candidate('aabAbbbc'), false)
    lu.assertEquals(candidate('accddbbjjj'), false)
end

os.exit(lu.LuaUnit.run())