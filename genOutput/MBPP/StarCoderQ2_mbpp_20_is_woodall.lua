-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)
	if x == 1 then
		return false
	end
	for i = 2, math.sqrt(x) do
		if x % i == 0 then
			return false
		end
	end
	return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_woodall
    lu.assertEquals(candidate(383), true)
    lu.assertEquals(candidate(254), false)
    lu.assertEquals(candidate(200), false)
end

os.exit(lu.LuaUnit.run())