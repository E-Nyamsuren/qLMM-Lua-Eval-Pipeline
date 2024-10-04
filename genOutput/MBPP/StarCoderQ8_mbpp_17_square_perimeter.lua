-- Write a function that returns the perimeter of a square given its side length as input.
local function square_perimeter(a)
	return 4 * a
end

lu = require('luaunit')

function test_humaneval()
local candidate = square_perimeter
    lu.assertEquals(candidate(10), 40)
    lu.assertEquals(candidate(5), 20)
    lu.assertEquals(candidate(4), 16)
end

os.exit(lu.LuaUnit.run())