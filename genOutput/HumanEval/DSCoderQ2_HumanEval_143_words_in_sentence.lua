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
    local words = sentence:gmatch("%w+")
    local result = ""
    for word in words do
        local is_prime = true
        local len = #word
        if len < 2 then is_prime = false end
        for i = 2, math.sqrt(len) do
            if len % i == 0 then
                is_prime = false
                break
            end
        end
        if is_prime then
            result = result .. " " .. word
        end
    end
    return result:sub(2)
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