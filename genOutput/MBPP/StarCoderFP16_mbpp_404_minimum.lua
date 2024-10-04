-- Write a luathon function to find the minimum of two numbers.
local function minimum(a, b)
	return a < b and a or b
end

lu = require('luaunit')

function test_humaneval()
local candidate = minimum
    lu.assertEquals(candidate(1, 2), 1)
    lu.assertEquals(candidate(-5, -4), -5)
    lu.assertEquals(candidate(0, 0), 0)
end

os.exit(lu.LuaUnit.run())