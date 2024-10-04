-- Write a function which returns nth catalan number.
local function catalan_number(num)
	local catalan = {}
	catalan[0] = 1
	for i = 1, num do
		catalan[i] = 0
		for j = 0, i - 1 do
			catalan[i] = catalan[i] + catalan[j] * catalan[i - j - 1]
		end
	end
	return catalan[num]
end

lu = require('luaunit')

function test_humaneval()
local candidate = catalan_number
    lu.assertEquals(candidate(10), 16796)
    lu.assertEquals(candidate(9), 4862)
    lu.assertEquals(candidate(7), 429)
end

os.exit(lu.LuaUnit.run())