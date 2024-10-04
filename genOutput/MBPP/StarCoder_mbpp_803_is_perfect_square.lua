-- Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/
local function is_perfect_square(n)
	local sqrt = math.sqrt(n)
	return sqrt % 1 == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_perfect_square
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(36), true)
    lu.assertEquals(candidate(14), false)
    lu.assertEquals(candidate(196), true)
    lu.assertEquals(candidate(125), false)
    lu.assertEquals(candidate(15625), true)
end

os.exit(lu.LuaUnit.run())