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
    local result = ""
    for i = 1, #message do
        local char = message:sub(i, i)
        if char:match("%a") then
            if char:lower() == char:lower() then
                char = char:upper()
            else
                char = char:lower()
            end
            if vowels:find(char:lower()) then
                local index = vowels:find(char:lower()) + 2
                if index > #vowels then
                    index = index - #vowels
                end
                char = vowels:sub(index, index)
            end
        end
        result = result .. char
    end
    return result
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