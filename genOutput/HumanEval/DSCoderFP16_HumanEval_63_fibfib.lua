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
    if n == 0 then
        return 0
    elseif n == 1 then
        return 0
    elseif n == 2 then
        return 1
    else
        local fibfib_1 = 0
        local fibfib_2 = 0
        local fibfib_3 = 1
        local fibfib_n = 0
        for i = 3, n do
            fibfib_n = fibfib_1 + fibfib_2 + fibfib_3
            fibfib_1 = fibfib_2
            fibfib_2 = fibfib_3
            fibfib_3 = fibfib_n
        end
        return fibfib_n
    end
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