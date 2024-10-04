-- Write a function to find the first adverb and their positions in a given sentence.
local function find_adverb_position(text)
	local adverb_positions = {}
	local words = split_text(text)
	for i, word in ipairs(words) do
		if is_adverb(word) then
			table.insert(adverb_positions, {word, i})
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