-- Return n-th Fibonacci number.
-- >>> fib(10)
-- 55
-- >>> fib(1)
-- 1
-- >>> fib(8)
-- 21
local function fib(n)
	if n == 1 then
		return 1
	end
	local a = 0
	local b = 1
	for i = 2, n do
		a, b = b, a + b
	end
	return b
end


lu = require('luaunit')

function test_humaneval()
local candidate = fib
    lu.assertEquals(candidate(10), 55)
    lu.assertEquals(candidate(1), 1)
    lu.assertEquals(candidate(8), 21)
    lu.assertEquals(candidate(11), 89)
    lu.assertEquals(candidate(12), 144)
end

os.exit(lu.LuaUnit.run())