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
	local fib4_table = {}
	fib4_table[0] = 0
	fib4_table[1] = 0
	fib4_table[2] = 2
	for i = 3, n do
		fib4_table[i] = fib4_table[i-1] + fib4_table[i-2] + fib4_table[i-3] + fib4_table[i-4]
	end
	return fib4_table[n]
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