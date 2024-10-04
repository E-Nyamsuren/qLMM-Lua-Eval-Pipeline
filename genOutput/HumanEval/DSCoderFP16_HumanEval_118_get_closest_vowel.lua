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
    local vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'}
    local last_vowel_pos = -1
    local closest_vowel = ''
    for i = #word, 1, -1 do
        local c = word:sub(i, i)
        if string.find(vowels, c, 1, true) then
            if last_vowel_pos >= 0 and i - last_vowel_pos > 2 then
                closest_vowel = c
                last_vowel_pos = i
            else
                last_vowel_pos = i
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