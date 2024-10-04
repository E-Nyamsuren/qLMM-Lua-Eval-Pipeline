-- Write a function to find the first adverb and their positions in a given sentence.
local function find_adverb_position(text)
	local adverb_pos = {}
	local adverb_pos_table = {}
	local adverb_pos_table_count = 0
	local adverb_pos_table_max = 0
	local adverb_pos_table_max_count = 0
	local adverb_pos_table_max_pos = 0
	local adverb_pos_table_max_pos_count = 0
	local adverb_pos_table_max_pos_pos = 0
	local adverb_pos_table_max_pos_pos_count = 0
	local adverb_pos_table_max_pos_pos_pos = 0
	local adverb_pos_table_max_pos_pos_pos_count = 0
	local adverb_pos_table_max_pos_pos_pos_pos = 0
	local adverb_pos_table_max_pos_pos_pos_pos_count = 0
	local adverb_pos_table_max_pos_pos_pos_pos_pos = 0
	local adverb_pos_table_max_pos_pos_pos_pos_pos_count = 0
	local adverb_pos_table_max_pos_pos_pos_pos_pos_pos = 0
	local adverb_pos_table_max_pos_pos_pos_pos_pos_pos_count = 0
	local adverb_pos_table_max_pos_pos_pos_pos_pos_pos_pos = 0
	local adverb_pos_table_max_pos_pos_pos_pos_pos_pos_pos_count = 0
	local adverb_pos_table_max_pos_pos_pos_pos_pos_pos_pos_pos = 0
	local adverb_pos_table_max_pos_pos_pos_pos_pos_pos_pos_pos_count = 0
	local adverb_pos_table_max_pos_pos_pos_pos_pos_pos_pos_pos_pos = 0
	

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverb_position
    lu.assertEquals(candidate('clearly!! we can see the sky'), {0, 7, 'clearly'})
    lu.assertEquals(candidate('seriously!! there are many roses'), {0, 9, 'seriously'})
    lu.assertEquals(candidate('unfortunately!! sita is going to home'), {0, 13, 'unfortunately'})
end

os.exit(lu.LuaUnit.run())