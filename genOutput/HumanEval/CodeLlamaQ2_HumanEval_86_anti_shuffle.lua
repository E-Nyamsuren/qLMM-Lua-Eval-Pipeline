-- Write a function that takes a string and returns an ordered version of it.
-- Ordered version of string, is a string where all words (separated by space)
-- are replaced by a new word where all the characters arranged in
-- ascending order based on ascii value.
-- Note: You should keep the order of words and blank spaces in the sentence.
-- For example:
-- >>> anti_shuffle('Hi')
-- 'Hi'
-- >>> anti_shuffle('hello')
-- 'ehllo'
-- >>> anti_shuffle('Hello World!!!')
-- 'Hello !!!Wdlor'
local function anti_shuffle(s)
    local words = {}
    for word in s:gmatch("%S+") do
        table.insert(words, word)
    end
    local ordered_words = {}
    for _, word in ipairs(words) do
        local ordered_word = ""
        for i = 1, #word do
            local c = word:sub(i, i)
            ordered_word = ordered_word .. c
        end
        table.insert(ordered_words, ordered_word)
    end
    return table.concat(ordered_words, " ")
end

lu = require('luaunit')

function test_humaneval()
local candidate = anti_shuffle
    lu.assertEquals(candidate('Hi'), 'Hi')
    lu.assertEquals(candidate('hello'), 'ehllo')
    lu.assertEquals(candidate('number'), 'bemnru')
    lu.assertEquals(candidate('abcd'), 'abcd')
    lu.assertEquals(candidate('Hello World!!!'), 'Hello !!!Wdlor')
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('Hi. My name is Mister Robot. How are you?'), '.Hi My aemn is Meirst .Rboot How aer ?ouy')
end

os.exit(lu.LuaUnit.run())