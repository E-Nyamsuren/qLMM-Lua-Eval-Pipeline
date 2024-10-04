-- Write a function that matches a string that has an a followed by one or more b's.
local function text_match_one(text)
  return string.match(text, 'ab+')
end
print(text_match_one("ac")) -- nil
print(text_match_one("abc")) -- "abc"
print(text_match_one("abbc")) -- "abbc"
print(text_match_one("a")) -- nil
print(text_match_one("bbb")) -- nil
print(text_match_one("aabbb")) -- "aabbb"
print(text_match_one("ba")) -- nil
print(text_match_one("aabb")) -- "aabb"
print(text_match_one("abbb")) -- "abbb"
print(text_match_one("aabbbb")) -- "aabbbb"
print(text_match_one("aabbbbb")) -- "aabbbbb"
print(text_match_one("aabbbbbb")) -- "aabbbbbb"
print(text_match_one("aabbbbbbb")) -- "aabbbbbbb"
print(text_match_one("aabbbbbbbb")) -- "aabbbbbbbb"
print(text_match_one("aabbbbbbbbb")) -- "aabbbbbbbbb"
print(text_match_one("aabbbbbbbbbb")) -- "aabbbbbbbbbb"
print(text_match_one("aabbbbbbbbbbb")) -- "aabbbbbbbbbbb"
print(text_match_one("aabbbbbbbbbbbb")) -- "aabbbbbbbbbbbb"
print(text_match_one("aabbbbbbbbbbbbb")) -- "aabbbbbbbbbbbbb"
print(text_match_one("aabbbbbbbbbbbbbb")) -- "aabbbbbbbbbbbbbb"
print(text_match_one("aabbbbbbbbbbbbbbb")) -- "aabbbbbbbbbbbbbbb"
print(text_match_one("aabbbbbbbbb

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_one
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abba'), true)
end

os.exit(lu.LuaUnit.run())