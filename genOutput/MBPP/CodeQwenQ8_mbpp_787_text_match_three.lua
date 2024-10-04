-- Write a function that matches a string that has an a followed by three 'b'.
local function text_match_three(text)
    return string.match(text, 'abbb') ~= nil
end
print(text_match_three("abbb")) -- true
print(text_match_three("aabbb")) -- true
print(text_match_three("ab")) -- false
print(text_match_three("aabb")) -- false
print(text_match_three("a")) -- false
print(text_match_three("aaa")) -- false
print(text_match_three("abbbb")) -- true
print(text_match_three("abbbbb")) -- true
print(text_match_three("abbbbbb")) -- false
print(text_match_three("abbbbbbb")) -- false
print(text_match_three("abbbbbbbb")) -- false
print(text_match_three("abbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbbbbbbbbbbb")) -- false
print(text_match_three("abbbbbbbbbbbbb

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_three
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abbbba'), true)
    lu.assertEquals(candidate('caacabbbba'), true)
end

os.exit(lu.LuaUnit.run())