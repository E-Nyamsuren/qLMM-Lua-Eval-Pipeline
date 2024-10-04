-- Write a function to return two words from a table of words starting with letter 'p'.
local function start_withp(words)
	local result = {}
	for _,word in ipairs(words) do
		if word:sub(1,1) == 'p' then
			table.insert(result, word)
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = start_withp
    lu.assertEquals(candidate({'Python PHP', 'Java JavaScript', 'c c++'}), {'Python', 'PHP'})
    lu.assertEquals(candidate({'Python Programming', 'Java Programming'}), {'Python', 'Programming'})
    lu.assertEquals(candidate({'Pqrst Pqr', 'qrstuv'}), {'Pqrst', 'Pqr'})
end

os.exit(lu.LuaUnit.run())