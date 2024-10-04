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
    local words = {}
    local i = 1
    for word in sentence:gmatch("%w+") do
        words[i] = word
        i = i + 1
    end
    local result = {}
    local j = 1
    for _, word in ipairs(words) do
        if #word > 1 then
            local is_prime = true
            for k = 2, #word - 1 do
                if #word % k == 0 then
                    is_prime = false
                    break
                end
            end
            if is_prime then
                result[j] = word
                j = j + 1
            end
        end
    end
    return table.concat(result, " ")
end

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