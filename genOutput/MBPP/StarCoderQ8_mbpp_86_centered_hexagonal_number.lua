-- Write a function to find nth centered hexagonal number.
local function centered_hexagonal_number(n)
	local i = 1
	local j = 1
	while i < n do
		j = j + 1
		i = i + 6 * j
	end
	return j * j
end

lu = require('luaunit')

function test_humaneval()
local candidate = centered_hexagonal_number
    lu.assertEquals(candidate(10), 271)
    lu.assertEquals(candidate(2), 7)
    lu.assertEquals(candidate(9), 217)
end

os.exit(lu.LuaUnit.run())