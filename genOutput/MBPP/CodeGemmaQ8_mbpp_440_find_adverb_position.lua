-- Write a function to find the first adverb and their positions in a given sentence.
local function find_adverb_position(text)
    local adverb_positions = {}
    local words = text:split(' ')
    for i, word in ipairs(words) do
        if word:match('^[a-zA-Z]+$') and word:match('^%a') then
            local adverb_position = i
            table.insert(adverb_positions, adverb_position)
        end
    end
    return adverb_positions
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverb_position
    lu.assertEquals(candidate('clearly!! we can see the sky'), {0, 7, 'clearly'})
    lu.assertEquals(candidate('seriously!! there are many roses'), {0, 9, 'seriously'})
    lu.assertEquals(candidate('unfortunately!! sita is going to home'), {0, 13, 'unfortunately'})
end

os.exit(lu.LuaUnit.run())