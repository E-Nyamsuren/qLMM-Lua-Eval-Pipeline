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
    local vowels = {"a", "e", "i", "o", "u"}
    local newMessage = ""
    for i = 1, #message do
        local letter = message:sub(i, i)
        if letter:match("%a") then
            if letter:match("%l") then
                newMessage = newMessage .. letter:upper()
            else
                newMessage = newMessage .. letter:lower()
            end
            for j = 1, #vowels do
                if letter == vowels[j] then
                    newMessage = newMessage .. string.char(string.byte(letter) + 2)
                end
            end
        else
            newMessage = newMessage .. letter
        end
    end
    return newMessage
end
print(encode("test"))
print(encode("This is a message"))
</code>

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