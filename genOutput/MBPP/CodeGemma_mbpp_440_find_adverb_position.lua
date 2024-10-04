-- Write a function to find the first adverb and their positions in a given sentence.
local function find_adverb_position(text)
    local adverbs = {"now", "then", "later", "yesterday", "today", "tomorrow", "soon", "last", "next", "ever", "never", "always", "sometimes", "often", "rarely", "hardly", "scarcely", "seldom", "often", "usually", "generally", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "usually", "

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverb_position
    lu.assertEquals(candidate('clearly!! we can see the sky'), {0, 7, 'clearly'})
    lu.assertEquals(candidate('seriously!! there are many roses'), {0, 9, 'seriously'})
    lu.assertEquals(candidate('unfortunately!! sita is going to home'), {0, 13, 'unfortunately'})
end

os.exit(lu.LuaUnit.run())