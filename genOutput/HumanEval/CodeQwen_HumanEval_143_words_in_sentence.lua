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
    local function is_prime(n)
        if n <= 1 then
            return false
        end
        for i = 2, math.sqrt(n) do
            if n % i == 0 then
                return false
            end
        end
        return true
    end
    local words = {}
    for word in sentence:gmatch('%S+') do
        if is_prime(#word) then
            table.insert(words, word)
        end
    end
    return table.concat(words, ' ')
end
print(words_in_sentence('This is a test')) -- 'is'
print(words_in_sentence('lets go for swimming')) -- 'go for'
print(words_in_sentence('I love programming')) -- 'I love'
print(words_in_sentence('Find the prime words')) -- 'the prime'
print(words_in_sentence('Prime numbers are fun')) -- 'are fun'
print(words_in_sentence('Find the prime words in the sentence')) -- 'the prime words'
print(words_in_sentence('Find the prime words in the sentence with prime lengths')) -- 'the prime words with prime lengths'
print(words_in_sentence('Find the prime words in the sentence with prime lengths and prime numbers')) -- 'the prime words with prime lengths and prime numbers'
print(words_in_sentence('Find the prime words in the sentence with prime lengths and prime numbers and prime')) -- 'the prime words

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