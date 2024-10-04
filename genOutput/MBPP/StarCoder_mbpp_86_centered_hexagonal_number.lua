-- Write a function to find nth centered hexagonal number.
local function centered_hexagonal_number(n)
	local i = 1
	local j = 1
	local count = 0
	while count < n do
		if i % 2 == 0 then
			count = count + 1
		end
		i = i + 1
		j = j + 1
	end
	return j - 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = centered_hexagonal_number
    lu.assertEquals(candidate(10), 271)
    lu.assertEquals(candidate(2), 7)
    lu.assertEquals(candidate(9), 217)
end

os.exit(lu.LuaUnit.run())