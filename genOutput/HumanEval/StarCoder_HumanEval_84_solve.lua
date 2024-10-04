-- Given a positive integer N, return the total sum of its digits in binary.
-- Example
-- >>> solve(1000)
-- '1'
-- >>> solve(150)
-- '110'
-- >>> solve(147)
-- '1100'
-- Variables:
--     @N integer
--          Constraints: 0 ≤ N ≤ 10000.
-- Output:
--      a string of binary number
local function solve(N)
	local sum = 0
	while N > 0 do
		sum = sum + N % 2
		N = math.floor(N / 2)
	end
	return sum
end


lu = require('luaunit')

function test_humaneval()
local candidate = solve
    lu.assertEquals(candidate(1000), '1')
    lu.assertEquals(candidate(150), '110')
    lu.assertEquals(candidate(147), '1100')
    lu.assertEquals(candidate(333), '1001')
    lu.assertEquals(candidate(963), '10010')
end

os.exit(lu.LuaUnit.run())