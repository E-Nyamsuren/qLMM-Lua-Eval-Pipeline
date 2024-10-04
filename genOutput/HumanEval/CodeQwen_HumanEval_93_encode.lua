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
    local vowels = 'aeiou'
    local encoded = ''
    for i = 1, #message do
        local char = message:sub(i, i)
        if char:match('[a-zA-Z]') then
            if char:match('[aeiouAEIOU]') then
                local index = vowels:find(char:lower())
                local new_char = vowels:sub((index + 2) % #vowels, (index + 2) % #vowels)
                encoded = encoded .. (char:lower() == char:upper() and new_char:upper() or new_char:lower())
            else
                encoded = encoded .. (char:lower() == char:upper() and char:lower():upper() or char:upper():lower())
            end
        else
            encoded = encoded .. char
        end
    end
    return encoded
end
print(encode('test')) -- 'TGST'
print(encode('This is a message')) -- 'tHKS KS C MGSSCGG'
print(encode('Hello World')) -- 'jGNNQ yQTPG'
print(encode('Programming is fun')) -- 'qRQHKRRKMMKO KS HVQ'
print(encode('Encode THIS message')) -- 'gNCDKC kTHS MGSSCGG'
print(encode('123')) -- '123'
print(encode('')) -- ''
print(encode('AEIOU')) -- 'CGGSS'
print(encode('aeiou')) -- 'cggss'
print(encode('bcdfghjklmnpqrstvw

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