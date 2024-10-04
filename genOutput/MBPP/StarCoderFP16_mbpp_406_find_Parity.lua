-- Write a luathon function to find whether the parity of a given number is odd.
local function find_Parity(x)
	return x%2 == 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Parity
    lu.assertEquals(candidate(12), false)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(10), false)
end

os.exit(lu.LuaUnit.run())