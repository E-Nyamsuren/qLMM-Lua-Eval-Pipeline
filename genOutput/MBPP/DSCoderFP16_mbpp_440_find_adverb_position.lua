-- Write a function to find the first adverb and their positions in a given sentence.
local function find_adverb_position(text)
    local adverb_positions = {}
    local adverb_start = 0
    local adverb_end = 0
    local adverb_found = false
    local words = string.gmatch(text, "%S+")
    for i, word in ipairs(words) do
        if word == "very" or word == "really" or word == "absolutely" or word == "completely" or word == "incredibly" or word == "extremely" or word == "ultimately" or word == "impressively" or word == "significantly" or word == "seriously" or word == "firmly" or word == "clearly" or word == "quickly" or word == "easily" or word == "quickly" or word == "so" or word == "thus" or word == "in" or word == "on" or word == "at" or word == "by" or word == "from" or word == "into" or word == "off" or word == "out" or word == "over" or word == "under" or word == "about" or word == "above" or word == "below" or word == "to" or word == "from" or word == "into" or word == "out" or word == "off" or word == "on" or word == "at" or word == "by" or word == "from" or word == "into" or word == "out" or word == "off" or word == "on" or word == "at" or word == "by" or word == "from" or word == "into" or word == "out" or word == "off" or word == "on" or word == "at" or word == "by" or word == "from" or word == "into" or word == "out" or word == "off" or word == "on" or word == "at" or word == "by" or word == "from" or word == "into" or word == "out" or word == "off" or word == "on" or word == "at" or word == "by" or word == "

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverb_position
    lu.assertEquals(candidate('clearly!! we can see the sky'), {0, 7, 'clearly'})
    lu.assertEquals(candidate('seriously!! there are many roses'), {0, 9, 'seriously'})
    lu.assertEquals(candidate('unfortunately!! sita is going to home'), {0, 13, 'unfortunately'})
end

os.exit(lu.LuaUnit.run())