-- Write a function to find the nth octagonal number.
local function is_octagonal(n)
	return n == 1 or n == 2 or n == 3 or n == 4 or n == 5 or n == 6 or n == 7 or n == 8
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_octagonal
    lu.assertEquals(candidate(5), 65)
    lu.assertEquals(candidate(10), 280)
    lu.assertEquals(candidate(15), 645)
end

os.exit(lu.LuaUnit.run())