-- Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/luathon-exercises/re/luathon-re-exercise-3.php
local function text_match_zero_one(text)
    local pattern = 'ab+'
    local result = string.find(text, pattern)
    if result then
        return 'Found a match!'
    else
        return 'Not matched!'
    end
end
print(text_match_zero_one('ac'))  -- Not matched!
print(text_match_zero_one('abc'))  -- Found a match!
print(text_match_zero_one('abbc'))  -- Found a match!
print(text_match_zero_one('aabbbc'))  -- Found a match!
print(text_match_zero_one('ba'))  -- Not matched!
print(text_match_zero_one('bba'))  -- Not matched!
print(text_match_zero_one('a'))  -- Not matched!
print(text_match_zero_one('b'))  -- Not matched!
print(text_match_zero_one(''))  -- Not matched!
print(text_match_zero_one('aabbb'))  -- Found a match!
print(text_match_zero_one('abbb'))  -- Found a match!
print(text_match_zero_one('aabb'))  -- Found a match!
print(text_match_zero_one('ab'))  -- Found a match!
print(text_match_zero_one('a'))  -- Not matched!
print(text_match_zero_one(''))  -- Not matched!
print(text_match_zero_one('abbbb'))  -- Found a match!
print(text_match_zero_one('abbbbb'))  -- Found a match!
print(text_match_zero_one('abbb'))  -- Found a match!
print(text_match_zero_one('ab'))  -- Found a match!
print(text_match_zero_one('a'))  -- Not matched!
print(text_match_zero_one(''))

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