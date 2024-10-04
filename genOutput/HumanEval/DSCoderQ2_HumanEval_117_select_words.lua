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
    local word = ''
    local vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'}
    local count = 0
    for i = 1, #s do
        if s:sub(i, i) ~= ' ' then
            word = word .. s:sub(i, i)
        else
            for j = 1, #word do
                if word:sub(j, j) ~= ' ' and not table.contains(vowels, word:sub(j, j)) then
                    count = count + 1
                end
            end
            if count == n then
                table.insert(words, word)
            end
            word = ''
            count = 0
        end
    end
    return words
end

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