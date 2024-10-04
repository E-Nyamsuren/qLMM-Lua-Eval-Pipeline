-- Given a string s and a natural number n, you have been tasked to implement 
-- a function that returns a table of all words from string s that contain exactly 
-- n consonants, in order these words appear in the string s.
-- If the string s is empty then the function should return an empty table.
-- Note: you may assume the input string contains only letters and spaces.
-- Examples:
-- >>> select_words('Mary had a little lamb', 4)
-- {'little'}
-- >>> select_words('Mary had a little lamb', 3)
-- {'Mary', 'lamb'}
-- >>> select_words('simple white space', 2)
-- {}
-- >>> select_words('Hello world', 4)
-- {'world'}
-- >>> select_words('Uncle sam', 3)
-- {'Uncle'}
local function select_words(s, n)
    local words = {}
    for word in string.gmatch(s, "%S+") do
        local consonant_count = 0
        for letter in string.gmatch(word, "%a") do
            if letter ~= 'a' and letter ~= 'e' and letter ~= 'i' and letter ~= 'o' and letter ~= 'u' then
                consonant_count = consonant_count + 1
            end
        end
        if consonant_count == n then
            table.insert(words, word)
        end
    end
    return words
end
print(select_words('Mary had a little lamb', 4)) -- {'little'}
print(select_words('Mary had a little lamb', 3)) -- {'Mary', 'lamb'}
print(select_words('simple white space', 2)) -- {}
print(select_words('Hello world', 4)) -- {'world'}
print(select_words('Uncle sam', 3)) -- {'Uncle'}
```
```lua

lu = require('luaunit')

function test_humaneval()
local candidate = select_words
    lu.assertEquals(candidate('Mary had a little lamb', 4), {'little'})
    lu.assertEquals(candidate('Mary had a little lamb', 3), {'Mary', 'lamb'})
    lu.assertEquals(candidate('simple white space', 2), {})
    lu.assertEquals(candidate('Hello world', 4), {'world'})
    lu.assertEquals(candidate('Uncle sam', 3), {'Uncle'})
    lu.assertEquals(candidate('', 4), {})
    lu.assertEquals(candidate('a b c d e f', 1), {'b', 'c', 'd', 'f'})
end

os.exit(lu.LuaUnit.run())