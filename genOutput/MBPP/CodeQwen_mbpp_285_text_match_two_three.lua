-- Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
local function text_match_two_three(text)
  return string.find(text, 'ab{2,3}') ~= nil
end
print(text_match_two_three("ac")) -- false
print(text_match_two_three("dc")) -- false
print(text_match_two_three("abbb")) -- true
print(text_match_two_three("ab")) -- false
print(text_match_two_three("aabb")) -- true
print(text_match_two_three("abbbb")) -- true
print(text_match_two_three("abc")) -- false
print(text_match_two_three("a")) -- false
print(text_match_two_three("abbbbb")) -- true
print(text_match_two_three("aab")) -- true
print(text_match_two_three("aa")) -- false
print(text_match_two_three("aabbb")) -- true
print(text_match_two_three("aabbbb")) -- true
print(text_match_two_three("aabbbbb")) -- true
print(text_match_two_three("aabbbbbb")) -- true
print(text_match_two_three("aabbbbbbb")) -- true
print(text_match_two_three("aabbbbbbbb")) -- true
print(text_match_two_three("aabbbbbbbbb")) -- true
print(text_match_two_three("aabbbbbbbbbb")) -- true
print(text_match_two_three("aabbbbbbbbbbb")) -- true
print(text_match_two_three("aabbbbbbbbbbbb")) -- true
print(text_match_two_three("aabbbbbbbbbbbbb")) -- true
print(text_match_two_three("aabbbbbbbbbbbbbb")) -- true
print(text_match_two_three("aabbbbbbbbbbbbbbb")) -- true
print(text_match_two_three("aabbbbbbbbbbb

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_two_three
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abbbba'), true)
end

os.exit(lu.LuaUnit.run())