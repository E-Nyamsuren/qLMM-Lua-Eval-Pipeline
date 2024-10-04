-- Write a function to return two words from a table of words starting with letter 'p'.
local function start_withp(words)
	local p_words = {}
	for i, word in ipairs(words) do
		if string.sub(word, 1, 1) == 'p' then
			table.insert(p_words, word)
		end
	end
	return p_words
end

lu = require('luaunit')

function test_humaneval()
local candidate = start_withp
    lu.assertEquals(candidate({'Python PHP', 'Java JavaScript', 'c c++'}), {'Python', 'PHP'})
    lu.assertEquals(candidate({'Python Programming', 'Java Programming'}), {'Python', 'Programming'})
    lu.assertEquals(candidate({'Pqrst Pqr', 'qrstuv'}), {'Pqrst', 'Pqr'})
end

os.exit(lu.LuaUnit.run())