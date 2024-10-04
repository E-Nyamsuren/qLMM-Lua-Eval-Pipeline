-- Write a function to find the first adverb and their positions in a given sentence.
local function find_adverb_position(text)
    local adverb_positions = {}
    local adverb_text = {}
    local adverb_found = false
    local adverb_position = 0
    local adverb_text_position = 0
    local adverb_text_length = 0
    local adverb_text_index = 0
    local adverb_text_index_length = 0
    local adverb_text_index_position = 0
    local adverb_text_index_position_length = 0
    local adverb_text_index_position_length_length = 0
    local adverb_text_index_position_length_length_length = 0
    local adverb_text_index_position_length_length_length_length = 0
    local adverb_text_index_position_length_length_length_length_length = 0
    local adverb_text_index_position_length_length_length_length_length_length = 0
    local adverb_text_index_position_length_length_length_length_length_length_length = 0
    local adverb_text_index_position_length_length_length_length_length_length_length_length = 0
    local adverb_text_index_position_length_length_length_length_length_length_length_length_length = 0
    local adverb_text_index_position_length_length_length_length_length_length_length_length_length_length = 0
    local adverb_text_index_position_length_length_length_length_length_length_length_length_length_length_length = 0
    local adverb_text_index_position_length_length_length_length_length_length_length_length_length_length_length_length = 0
    local adverb_text_index_position_length_length_length_length_length_length_length_length_length_length_length_length_length = 0
    local adverb_text_index_position_length_length

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverb_position
    lu.assertEquals(candidate('clearly!! we can see the sky'), {0, 7, 'clearly'})
    lu.assertEquals(candidate('seriously!! there are many roses'), {0, 9, 'seriously'})
    lu.assertEquals(candidate('unfortunately!! sita is going to home'), {0, 13, 'unfortunately'})
end

os.exit(lu.LuaUnit.run())