-- Write a function to find the first adverb ending with ly and its positions in a given string.
local function find_adverbs(text)
    local adverbs = {}
    for i = 1, #text do
        local char = text:sub(i, i)
        if char == "l" then
            local j = i + 1
            while j <= #text and text:sub(j, j) ~= " " do
                j = j + 1
            end
            local adverb = text:sub(i, j - 1)
            if adverb:sub(-3, -1) == "ly" then
                table.insert(adverbs, {adverb, i, j - 1})
            end
        end
    end
    return adverbs
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverbs
    lu.assertEquals(candidate('Clearly, he has no excuse for such behavior.'), '0-7: Clearly')
    lu.assertEquals(candidate('Please handle the situation carefuly'), '28-36: carefuly')
    lu.assertEquals(candidate('Complete the task quickly'), '18-25: quickly')
end

os.exit(lu.LuaUnit.run())