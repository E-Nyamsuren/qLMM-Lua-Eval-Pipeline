-- Write a function to find the first adverb and their positions in a given sentence.
local function find_adverb_position(text)
    local adverb_positions = {}
    local adverb_words = {}
    local adverb_word_positions = {}
    local adverb_word_positions_count = 0
    local adverb_word_positions_count_max = 0
    local adverb_word_positions_count_min = 0
    local adverb_word_positions_count_max_index = 0
    local adverb_word_positions_count_min_index = 0
    local adverb_word_positions_count_max_index_max = 0
    local adverb_word_positions_count_min_index_max = 0
    local adverb_word_positions_count_max_index_min = 0
    local adverb_word_positions_count_min_index_min = 0
    local adverb_word_positions_count_max_index_max_index = 0
    local adverb_word_positions_count_min_index_max_index = 0
    local adverb_word_positions_count_max_index_min_index = 0
    local adverb_word_positions_count_min_index_min_index = 0
    local adverb_word_positions_count_max_index_max_index_max = 0
    local adverb_word_positions_count_min_index_max_index_max = 0
    local adverb_word_positions_count_max_index_min_index_max = 0
    local adverb_word_positions_count_min_index_min_index_max = 0
    local adverb_word_positions_count_max_index_max_index_min = 0
    local adverb_word_positions_count_min_index_max_index_min = 0
    local adverb_word_positions_count_max_index_min_index_min = 0
    local adverb_word_positions_count

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverb_position
    lu.assertEquals(candidate('clearly!! we can see the sky'), {0, 7, 'clearly'})
    lu.assertEquals(candidate('seriously!! there are many roses'), {0, 9, 'seriously'})
    lu.assertEquals(candidate('unfortunately!! sita is going to home'), {0, 13, 'unfortunately'})
end

os.exit(lu.LuaUnit.run())