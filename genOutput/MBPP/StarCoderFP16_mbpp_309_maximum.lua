-- Write a luathon function to find the maximum of two numbers.
local function maximum(a, b)
	return a > b and a or b
end

lu = require('luaunit')

function test_humaneval()
local candidate = maximum
    lu.assertEquals(candidate(5, 10), 10)
    lu.assertEquals(candidate(-1, -2), -1)
    lu.assertEquals(candidate(9, 7), 9)
end

os.exit(lu.LuaUnit.run())