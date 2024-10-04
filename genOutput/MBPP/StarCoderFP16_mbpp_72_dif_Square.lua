-- Write a luathon function to check whether the given number can be represented as the difference of two squares or not.
local function dif_Square(n)
	local sqrt = math.sqrt(n)
	if sqrt == math.floor(sqrt) then
		return true
	else
		return false
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = dif_Square
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(15), true)
end

os.exit(lu.LuaUnit.run())