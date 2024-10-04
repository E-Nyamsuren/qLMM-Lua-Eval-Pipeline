-- Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.
local function find_literals(text, pattern)
	local matches = {}
	local pos = 1
	while true do
		local start, end_ = string.find(text, pattern, pos, true)
		if not start then break end
		table.insert(matches, {start, end_, string.sub(text, start, end_)})
		pos = end_ + 1
	end
	return matches
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_literals
    lu.assertEquals(candidate('The quick brown fox jumps over the lazy dog.', 'fox'), {'fox', 16, 19})
    lu.assertEquals(candidate('Its been a very crazy procedure right', 'crazy'), {'crazy', 16, 21})
    lu.assertEquals(candidate('Hardest choices required strongest will', 'will'), {'will', 35, 39})
end

os.exit(lu.LuaUnit.run())