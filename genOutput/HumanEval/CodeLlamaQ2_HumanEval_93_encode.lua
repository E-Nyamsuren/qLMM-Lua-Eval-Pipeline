-- Write a function that takes a message, and encodes in such a 
-- way that it swaps case of all letters, replaces all vowels in 
-- the message with the letter that appears 2 places ahead of that 
-- vowel in the english alphabet. 
-- Assume only letters. 
-- Examples:
-- >>> encode('test')
-- 'TGST'
-- >>> encode('This is a message')
-- 'tHKS KS C MGSSCGG'
local function encode(message)
    local encoded = ""
    for i, c in ipairs(message) do
        if c:match("[aeiou]") then
            local next_vowel = message:sub(i+2, i+2):lower()
            if next_vowel == "a" then
                next_vowel = "e"
            elseif next_vowel == "e" then
                next_vowel = "i"
            elseif next_vowel == "i" then
                next_vowel = "o"
            elseif next_vowel == "o" then
                next_vowel = "u"
            elseif next_vowel == "u" then
                next_vowel = "a"
            end
            encoded = encoded .. next_vowel
        else
            encoded = encoded .. c:upper()
        end
    end
    return encoded
end

lu = require('luaunit')

function test_humaneval()
local candidate = encode
    lu.assertEquals(candidate('TEST'), 'tgst')
    lu.assertEquals(candidate('Mudasir'), 'mWDCSKR')
    lu.assertEquals(candidate('YES'), 'ygs')
    lu.assertEquals(candidate('This is a message'), 'tHKS KS C MGSSCGG')
    lu.assertEquals(candidate('I DoNt KnOw WhAt tO WrItE'), 'k dQnT kNqW wHcT Tq wRkTg')
end

os.exit(lu.LuaUnit.run())