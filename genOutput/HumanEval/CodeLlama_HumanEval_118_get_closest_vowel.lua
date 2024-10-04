-- You are given a word. Your task is to find the closest vowel that stands between 
-- two consonants from the right side of the word (case sensitive).
-- Vowels in the beginning and ending doesn't count. Return empty string if you didn't
-- find any vowel met the above condition. 
-- You may assume that the given string contains English letter only.
-- Example:
-- >>> get_closest_vowel('yogurt')
-- 'u'
-- >>> get_closest_vowel('FULL')
-- 'U'
-- >>> get_closest_vowel('quick')
-- ''
-- >>> get_closest_vowel('ab')
-- ''
local function get_closest_vowel(word)
    local vowels = {'a', 'e', 'i', 'o', 'u'}
    local consonants = {'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'}
    local word_len = string.len(word)
    local closest_vowel = ''
    local closest_vowel_index = 0
    local closest_vowel_distance = 0
    for i = 1, word_len do
        local char = string.sub(word, i, i)
        if (string.find(vowels, char) ~= nil) then
            if (closest_vowel_index == 0) then
                closest_vowel_index = i
                closest_vowel_distance = 0
                closest_vowel = char
            else
                local distance = i - closest_vowel_index
                if (distance > closest_vowel_distance) then
                    closest_vowel_distance = distance
                    closest_vowel_index = i
                    closest_vowel = char
                end
            end
        elseif (string.find(consonants, char) ~= nil) then
            if (closest_vowel_index ~= 0) then
                local distance

lu = require('luaunit')

function test_humaneval()
local candidate = get_closest_vowel
    lu.assertEquals(candidate('yogurt'), 'u')
    lu.assertEquals(candidate('full'), 'u')
    lu.assertEquals(candidate('easy'), '')
    lu.assertEquals(candidate('eAsy'), '')
    lu.assertEquals(candidate('ali'), '')
    lu.assertEquals(candidate('bad'), 'a')
    lu.assertEquals(candidate('most'), 'o')
    lu.assertEquals(candidate('ab'), '')
    lu.assertEquals(candidate('ba'), '')
    lu.assertEquals(candidate('quick'), '')
    lu.assertEquals(candidate('anime'), 'i')
    lu.assertEquals(candidate('Asia'), '')
    lu.assertEquals(candidate('Above'), 'o')
end

os.exit(lu.LuaUnit.run())