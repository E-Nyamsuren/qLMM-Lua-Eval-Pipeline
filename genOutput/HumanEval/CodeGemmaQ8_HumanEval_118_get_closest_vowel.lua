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
    local vowel_index = 0
    local consonant_index = 0
    local closest_vowel = ''
    local closest_vowel_index = 0
    local closest_vowel_distance = 0
    local word_length = #word
    for i = 1, word_length do
        if table.contains(vowels, word:sub(i, i)) then
            vowel_index = i
            for j = 1, word_length do
                if table.contains(consonants, word:sub(j, j)) then
                    consonant_index = j
                    if consonant_index > vowel_index then
                        local distance = consonant_index - vowel_index
                        if distance < closest_vowel_distance or closest_vowel_distance == 0 then
                            closest_vowel_distance = distance
                            closest_vowel = word:sub(vowel_index, vowel_index)
                            closest_vowel_index = vowel_index
                        end
                    end
                end
            end
        end
    end
    return closest_vowel
end

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