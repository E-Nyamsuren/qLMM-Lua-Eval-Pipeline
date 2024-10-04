-- Write a luathon function to check whether the given number can be represented as the difference of two squares or not.
local function dif_Square(n)
	local i = 0
	while i*i <= n do
		if (n - i*i) == (i+1)*(i+1) then
			return true
		end
		i = i + 1
	end
	return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = dif_Square
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(15), true)
end

os.exit(lu.LuaUnit.run())