-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)
	local r = n % 10
	local s = n // 10
	local t = r * 10 + s % 10
	local u = s // 10
	return n == t - u
end

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())