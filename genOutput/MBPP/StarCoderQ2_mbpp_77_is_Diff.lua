-- Write a luathon function to find whether a number is divisible by 11.
local function is_Diff(n)
	local a = n % 11
	local b = n // 11
	return a == 0 or b == 0 or a == b
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Diff
    lu.assertEquals(candidate(12345), false)
    lu.assertEquals(candidate(1212112), true)
    lu.assertEquals(candidate(1212), false)
end

os.exit(lu.LuaUnit.run())