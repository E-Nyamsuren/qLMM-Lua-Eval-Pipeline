-- The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
-- fib4(0) -> 0
-- fib4(1) -> 0
-- fib4(2) -> 2
-- fib4(3) -> 0
-- fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
-- Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
-- >>> fib4(5)
-- 4
-- >>> fib4(6)
-- 8
-- >>> fib4(7)
-- 14
local function fib4(n)
	local a, b, c, d = 0, 0, 2, 0
	for i = 1, n do
		a, b, c, d = b, c, d, a + b + c + d
	end
	return d
end


lu = require('luaunit')

function test_humaneval()
local candidate = fib4
    lu.assertEquals(candidate(5), 4)
    lu.assertEquals(candidate(8), 28)
    lu.assertEquals(candidate(10), 104)
    lu.assertEquals(candidate(12), 386)
end

os.exit(lu.LuaUnit.run())