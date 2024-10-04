-- Find how many times a given substring can be found in the original string. Count overlaping cases.
-- >>> how_many_times('', 'a')
-- 0
-- >>> how_many_times('aaa', 'a')
-- 3
-- >>> how_many_times('aaaa', 'aa')
-- 3
local function how_many_times(string, substring)
	local count = 0
	local start = 1
	while true do
		local found = string.find(string, substring, start)
		if found then
			count = count + 1
			start = found + 1
		else
			break
		end
	end
	return count
end


lu = require('luaunit')

function test_humaneval()
local candidate = how_many_times
    lu.assertEquals(candidate('', 'x'), 0)
    lu.assertEquals(candidate('xyxyxyx', 'x'), 4)
    lu.assertEquals(candidate('cacacacac', 'cac'), 4)
    lu.assertEquals(candidate('john doe', 'john'), 1)
end

os.exit(lu.LuaUnit.run())