-- Write a function to find the n'th lucas number.
local function find_lucas(n)
	if n == 0 then return 2
	elseif n == 1 then return 1
	end
	local a = 2
	local b = 1
	for i = 2, n do
		a, b = b, a + b
	end
	return b
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_lucas
    lu.assertEquals(candidate(9), 76)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(3), 4)
end

os.exit(lu.LuaUnit.run())