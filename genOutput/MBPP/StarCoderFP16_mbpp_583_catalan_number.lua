-- Write a function which returns nth catalan number.
local function catalan_number(num)
	if num == 0 then
		return 1
	end
	local catalan_table = {}
	for i = 0, num do
		catalan_table[i] = 0
	end
	catalan_table[0] = 1
	for i = 1, num do
		for j = 0, i - 1 do
			catalan_table[i] = catalan_table[i] + catalan_table[j] * catalan_table[i - j - 1]
		end
	end
	return catalan_table[num]
end

lu = require('luaunit')

function test_humaneval()
local candidate = catalan_number
    lu.assertEquals(candidate(10), 16796)
    lu.assertEquals(candidate(9), 4862)
    lu.assertEquals(candidate(7), 429)
end

os.exit(lu.LuaUnit.run())