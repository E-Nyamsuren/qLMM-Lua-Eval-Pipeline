-- Write a function to find the first adverb ending with ly and its positions in a given string.
local function find_adverbs(text)
    local adverbs = {}
    local adverb_pattern = "%bLy"
    local adverb_start_pos = 1
    while true do
        local adverb_start, adverb_end = text:find(adverb_pattern, adverb_start_pos)
        if not adverb_start then
            break
        end
        table.insert(adverbs, {
            start = adverb_start,
            end = adverb_end
        })
        adverb_start_pos = adverb_end + 1
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