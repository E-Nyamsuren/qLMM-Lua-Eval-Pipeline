-- Write a function to find the first adverb ending with ly and its positions in a given string.
local function find_adverbs(text)
    local adverbs = {}
    for i in string.gmatch(text, "%a+ly") do
        table.insert(adverbs, i)
    end
    return adverbs
end
print(find_adverbs("He was surprisingly late."))

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverbs
    lu.assertEquals(candidate('Clearly, he has no excuse for such behavior.'), '0-7: Clearly')
    lu.assertEquals(candidate('Please handle the situation carefuly'), '28-36: carefuly')
    lu.assertEquals(candidate('Complete the task quickly'), '18-25: quickly')
end

os.exit(lu.LuaUnit.run())