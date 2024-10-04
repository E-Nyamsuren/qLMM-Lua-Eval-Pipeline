-- Out of table of strings, return the longest one. Return the first one in case of multiple
-- strings of the same length. Return nil in case the input table is empty.
-- >>> longest({})
-- None
-- >>> longest({'a', 'b', 'c'})
-- 'a'
-- >>> longest({'a', 'bb', 'ccc'})
-- 'ccc'
local function longest(strings)
	local longest = nil
	local longest_length = 0
	for _, string in ipairs(strings) do
		if string:len() > longest_length then
			longest = string
			longest_length = string:len()
		end
	end
	return longest
end

lu = require('luaunit')

function test_humaneval()
local candidate = longest
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'x')
    lu.assertEquals(candidate({'x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc'}), 'zzzz')
end

os.exit(lu.LuaUnit.run())