-- Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/luathon-exercises/re/luathon-re-exercise-3.php
local function text_match_zero_one(text)
  local pattern = "ab+"
  return string.match(text, pattern)
end
print(text_match_zero_one("ac")) -- nil
print(text_match_zero_one("abc")) -- "abc"
print(text_match_zero_one("abbc")) -- "abbc"
print(text_match_zero_one("a")) -- nil
print(text_match_zero_one("bbb")) -- nil
print(text_match_zero_one("aabbb")) -- "aabbb"
print(text_match_zero_one("abbb")) -- "abbb"
print(text_match_zero_one("aabb")) -- "aabb"
print(text_match_zero_one("ab")) -- "ab"
print(text_match_zero_one("aab")) -- "aab"
print(text_match_zero_one("aa")) -- nil
print(text_match_zero_one("a")) -- nil
print(text_match_zero_one("ab")) -- "ab"
print(text_match_zero_one("aab")) -- "aab"
print(text_match_zero_one("aa")) -- nil
print(text_match_zero_one("a")) -- nil
print(text_match_zero_one("ab")) -- "ab"
print(text_match_zero_one("aab")) -- "aab"
print(text_match_zero_one("aa")) -- nil
print(text_match_zero_one("a")) -- nil
print(text_match_zero_one("ab")) -- "ab"
print(text_match_zero_one("aab")) -- "aab"
print(text_match_zero_one("aa")) -- nil
print(text_match_zero_one("a")) -- nil
print(text_match_zero_one("ab")) -- "ab"


lu = require('luaunit')

function test_humaneval()
local candidate = text_match_zero_one
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abbbba'), true)
    lu.assertEquals(candidate('dsabbbba'), true)
    lu.assertEquals(candidate('asbbbba'), false)
    lu.assertEquals(candidate('abaaa'), true)
end

os.exit(lu.LuaUnit.run())