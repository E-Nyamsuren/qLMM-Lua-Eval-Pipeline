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
    for i, word in ipairs(words) do
        words[i] = word:gsub(".", function(c) return string.char(string.byte(c) + 1) end)
    end
    return table.concat(words, " ")
end
print(anti_shuffle('Hi')) -- 'Hi'
print(anti_shuffle('hello')) -- 'ehllo'
print(anti_shuffle('Hello World!!!')) -- 'Hello !!!Wdlor'
print(anti_shuffle('Programming is fun!')) -- 'Pamgimnorg is fnu!'
print(anti_shuffle('Keep calm and code on!')) -- 'Keep aclm adn cdeo on!'
print(anti_shuffle('I love coding!')) -- 'I eolv cdgino!'
print(anti_shuffle('Coding is awesome!')) -- 'Cdgino is ewsmoea!'
print(anti_shuffle('I am learning to code!')) -- 'I am aelrnu to cdeo!'
print(anti_shuffle('I have a lot to do!')) -- 'I aeev a olt to do!'
print(anti_shuffle('I want to become a programmer!')) -- 'I aentt to cemmbe a rogrammer!'
print(anti_shuffle('I will be a great programmer!')) -- 'I illl be a gret

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