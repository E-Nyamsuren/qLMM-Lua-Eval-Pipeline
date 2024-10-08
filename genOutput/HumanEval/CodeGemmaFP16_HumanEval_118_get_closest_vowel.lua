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
    local word_len = #word
    local last_vowel = nil
    local last_vowel_index = nil
    local closest_vowel = nil
    local closest_vowel_index = nil
    local closest_vowel_distance = nil
    local closest_vowel_distance_index = nil
    local closest_vowel_distance_index_start = nil
    local closest_vowel_distance_index_end = nil
    local closest_vowel_distance_index_start_index = nil
    local closest_vowel_distance_index_end_index = nil
    local closest_vowel_distance_index_start_distance = nil
    local closest_vowel_distance_index_end_distance = nil
    local closest_vowel_distance_index_start_distance_index = nil
    local closest_vowel_distance_index_end_distance_index = nil
    local closest_vowel_distance_index_start_distance_distance = nil
    local closest_vowel_distance_index_end_distance_distance = nil
    local closest_vowel_distance_index_start_distance_distance_index = nil
    local closest_vowel_distance_index_end_distance_distance_index = nil
    local closest_vowel_distance_index_start_distance_distance_distance = nil
    local closest_vowel_distance_index_end_distance_distance_distance = nil
    local closest_vowel_distance_index_start_distance_distance_distance_index = nil


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