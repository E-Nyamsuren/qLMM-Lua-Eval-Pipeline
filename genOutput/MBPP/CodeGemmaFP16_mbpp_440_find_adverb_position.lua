-- Write a function to find the first adverb and their positions in a given sentence.
local function find_adverb_position(text)
    local adverb_pattern = "%b%a+"
    local adverbs = {}
    local positions = {}
    
    for match in text:gmatch(adverb_pattern) do
        table.insert(adverbs, match)
        table.insert(positions, #text - #match + 1)
    end
    
    return adverbs, positions
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverb_position
    lu.assertEquals(candidate('clearly!! we can see the sky'), {0, 7, 'clearly'})
    lu.assertEquals(candidate('seriously!! there are many roses'), {0, 9, 'seriously'})
    lu.assertEquals(candidate('unfortunately!! sita is going to home'), {0, 13, 'unfortunately'})
end

os.exit(lu.LuaUnit.run())