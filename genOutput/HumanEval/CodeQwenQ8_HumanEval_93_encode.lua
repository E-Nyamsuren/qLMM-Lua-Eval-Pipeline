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
    local vowels = "aeiou"
    local encoded_message = ""
    for i = 1, #message do
        local char = message:sub(i, i)
        if char:match("%a") then
            if char:match("%u") then
                char = char:lower()
            else
                char = char:upper()
            end
            if vowels:find(char:lower()) then
                local vowel_index = vowels:find(char:lower())
                local new_vowel = vowels:sub((vowel_index + 2) % #vowels, (vowel_index + 2) % #vowels)
                char = new_vowel:upper()
            end
        end
        encoded_message = encoded_message .. char
    end
    return encoded_message
end
print(encode('test')) -- 'TGST'
print(encode('This is a message')) -- 'tHKS KS C MGSSCGG'
print(encode('Hello World')) -- 'jGNNQ yQTPG'
print(encode('Programming is fun')) -- 'qRQHKRRKMMKO KS HVQ'
print(encode('Encode THIS message')) -- 'gNQDQCgT yQTPG'
print(encode('AEIOU')) -- 'CgKpQ'
print(encode('aeiou')) -- 'cgkpq'
print(encode('ABCDEFGHIJKLMNOPQRSTUVWXYZ')) -- 'CgKpQRSTUVWXYZ'
print(encode('abcdefghijklmnopq

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