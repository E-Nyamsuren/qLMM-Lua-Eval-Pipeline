-- Write a function to find the nth octagonal number.
local function is_octagonal(n)
	local m = 0
	local i = 1
	while m < n do
		i = i + 1
		m = m + i
	end
	return m == n
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_octagonal
    lu.assertEquals(candidate(5), 65)
    lu.assertEquals(candidate(10), 280)
    lu.assertEquals(candidate(15), 645)
end

os.exit(lu.LuaUnit.run())