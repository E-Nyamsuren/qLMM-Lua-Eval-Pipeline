-- Write a luathon function to find the next perfect square greater than a given number.
local function next_Perfect_Square(N)
	local sqrtN = math.sqrt(N)
	local nextN = math.floor(sqrtN)
	local nextNSquare = nextN * nextN
	if nextNSquare == N then
		return nextN
	end
	return nextNSquare
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_Perfect_Square
    lu.assertEquals(candidate(35), 36)
    lu.assertEquals(candidate(6), 9)
    lu.assertEquals(candidate(9), 16)
end

os.exit(lu.LuaUnit.run())