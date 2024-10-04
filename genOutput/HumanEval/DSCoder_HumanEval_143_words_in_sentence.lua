-- You are given a string representing a sentence,
-- the sentence contains some words separated by a space,
-- and you have to return a string that contains the words from the original sentence,
-- whose lengths are prime numbers,
-- the order of the words in the new string should be the same as the original one.
-- Example 1:
-- >>> words_in_sentence('This is a test')
-- 'is'
-- Example 2:
-- >>> words_in_sentence('lets go for swimming')
-- 'go for'
-- Constraints:
--     * 1 <= len(sentence) <= 100
--     * sentence contains only letters
local function words_in_sentence(sentence)
    local words = sentence:gmatch("%S+")
    local prime_words = {}
    for word in words do
        local is_prime = true
        for i = 2, math.sqrt(#word) do
            if word:sub(1, 1) == 'a' or word:sub(1, 1) == 'e' or word:sub(1, 1) == 'i' or word:sub(1, 1) == 'o' or word:sub(1, 1) == 'u' then
                is_prime = false
            elseif word:sub(#word, #word) == 'a' or word:sub(#word, #word) == 'e' or word:sub(#word, #word) == 'i' or word:sub(#word, #word) == 'o' or word:sub(#word, #word) == 'u' then
                is_prime = false
            elseif word:sub(i, i) == 'a' or word:sub(i, i) == 'e' or word:sub(i, i) == 'i' or word:sub(i, i) == 'o' or word:sub(i, i) == 'u' then
                is_prime = false
            elseif word:sub(#word - i + 2, #word - i + 2) == 'a' or word:sub(#word - i + 2, #word - i + 2) ==

lu = require('luaunit')

function test_humaneval()
local candidate = words_in_sentence
    lu.assertEquals(candidate('This is a test'), 'is')
    lu.assertEquals(candidate('lets go for swimming'), 'go for')
    lu.assertEquals(candidate('there is no place available here'), 'there is no place')
    lu.assertEquals(candidate('Hi I am Hussein'), 'Hi am Hussein')
    lu.assertEquals(candidate('go for it'), 'go for it')
    lu.assertEquals(candidate('here'), '')
    lu.assertEquals(candidate('here is'), 'is')
end

os.exit(lu.LuaUnit.run())