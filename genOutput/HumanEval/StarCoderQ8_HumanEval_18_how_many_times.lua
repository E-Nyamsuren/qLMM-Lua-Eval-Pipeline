-- Find how many times a given substring can be found in the original string. Count overlaping cases.
-- >>> how_many_times('', 'a')
-- 0
-- >>> how_many_times('aaa', 'a')
-- 3
-- >>> how_many_times('aaaa', 'aa')
-- 3
local function how_many_times(string, substring)
	local count = 0
	local i = 1
	while i <= #string do
		local j = 1
		while j <= #substring do
			if string:sub(i, i) == substring:sub(j, j) then
				count = count + 1
				j = j + 1
			else
				break
			end
		end
		i = i + 1
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