-- The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
-- fibfib(0) == 0
-- fibfib(1) == 0
-- fibfib(2) == 1
-- fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
-- Please write a function to efficiently compute the n-th element of the fibfib number sequence.
-- >>> fibfib(1)
-- 0
-- >>> fibfib(5)
-- 4
-- >>> fibfib(8)
-- 24
local function fibfib(n)
    if n == 0 then return 0 end
    if n == 1 then return 0 end
    if n == 2 then return 1 end
    local a, b, c = 0, 0, 1
    for i = 3, n do
        a, b, c = b, c, a + b + c
    end
    return c
end

lu = require('luaunit')

function test_humaneval()
local candidate = fibfib
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(1), 0)
    lu.assertEquals(candidate(5), 4)
    lu.assertEquals(candidate(8), 24)
    lu.assertEquals(candidate(10), 81)
    lu.assertEquals(candidate(12), 274)
    lu.assertEquals(candidate(14), 927)
end

os.exit(lu.LuaUnit.run())