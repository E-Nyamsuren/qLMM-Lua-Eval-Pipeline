-- Write a luathon function to check whether the given number is even or not.
local function is_Even(n)
	return n % 2 == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Even
    lu.assertEquals(candidate(1), false)
    lu.assertEquals(candidate(2), true)
    lu.assertEquals(candidate(3), false)
end

os.exit(lu.LuaUnit.run())