-- Write a function to find the first adverb ending with ly and its positions in a given string.
local function find_adverbs(text)
    local words = text:gmatch("%w+")
    local pos = 0
    for word in words do
        pos = pos + 1
        if word:match("^%l+ly$") then
            return word, pos
        end
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverbs
    lu.assertEquals(candidate('Clearly, he has no excuse for such behavior.'), '0-7: Clearly')
    lu.assertEquals(candidate('Please handle the situation carefuly'), '28-36: carefuly')
    lu.assertEquals(candidate('Complete the task quickly'), '18-25: quickly')
end

os.exit(lu.LuaUnit.run())