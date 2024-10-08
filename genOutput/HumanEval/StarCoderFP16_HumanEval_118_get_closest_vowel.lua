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
	local vowel_index = 0
	local vowel_distance = 0
	local vowel_found = false
	local vowel_found_index = 0
	local vowel_found_distance = 0
	local vowel_found_distance_index = 0
	for i = 1, #word do
		if vowels[i] then
			vowel_index = i
			vowel_found = true
			vowel_found_index = i
			vowel_found_distance = 0
			vowel_found_distance_index = i
		elseif vowel_found then
			vowel_found_distance = vowel_index - i
			if vowel_found_distance < vowel_found_distance_index then
				vowel_found_distance_index = vowel_found_distance
				vowel_found_index = i
			end
		end
	end
	if vowel_found then
		return string.sub(word, vowel_found_index, vowel_found_index)
	else
		return ''
	end
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