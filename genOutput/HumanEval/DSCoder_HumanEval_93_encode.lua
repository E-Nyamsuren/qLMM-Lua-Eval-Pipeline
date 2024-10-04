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
    local vowels = {['a'] = 'c', ['e'] = 'g', ['i'] = 'k', ['o'] 
    = 'q', ['u'] = 'w'}
    local encoded = ''
    for i = 1, #message do
        local c = message:sub(i, i)
        if c:match('%a') then
            c = c:upper() == c and c or c:lower()
            encoded = encoded .. (c:match('%a') and vowels[c] or c)
        else
            encoded = encoded .. c
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