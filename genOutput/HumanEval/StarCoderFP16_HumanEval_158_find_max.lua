-- Write a function that accepts a table of strings.
-- The table contains different words. Return the word with maximum number
-- of unique characters. If multiple strings have maximum number of unique
-- characters, return the one which comes first in lexicographical order.
-- >>> find_max({'name', 'of', 'string'})
-- 'string'
-- >>> find_max({'name', 'enam', 'game'})
-- 'enam'
-- >>> find_max({'aaaaaaa', 'bb', 'cc'})
-- 'aaaaaaa'
local function find_max(words)
	local max_word = words[1]
	local max_unique = 0
	for i = 1, #words do
		local word = words[i]
		local unique = 0
		for j = 1, #word do
			local char = word:sub(j, j)
			if not char:find('%s') then
				unique = unique + 1
			end
		end
		if unique > max_unique then
			max_word = word
			max_unique = unique
		end
	end
	return max_word
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_max
    lu.assertEquals(candidate({'name', 'of', 'string'}), 'string')
    lu.assertEquals(candidate({'name', 'enam', 'game'}), 'enam')
    lu.assertEquals(candidate({'aaaaaaa', 'bb', 'cc'}), 'aaaaaaa')
    lu.assertEquals(candidate({'abc', 'cba'}), 'abc')
    lu.assertEquals(candidate({'play', 'this', 'game', 'of', 'footbott'}), 'footbott')
    lu.assertEquals(candidate({'we', 'are', 'gonna', 'rock'}), 'gonna')
    lu.assertEquals(candidate({'we', 'are', 'a', 'mad', 'nation'}), 'nation')
    lu.assertEquals(candidate({'this', 'is', 'a', 'prrk'}), 'this')
    lu.assertEquals(candidate({'b'}), 'b')
    lu.assertEquals(candidate({'play', 'play', 'play'}), 'play')
end

os.exit(lu.LuaUnit.run())