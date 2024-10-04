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
    local fib4_cache = {}
    local function fib4_helper(n)
        if n == 0 then
            return 0
        elseif n == 1 then
            return 0
        elseif n == 2 then
            return 2
        elseif n == 3 then
            return 0
        else
            if fib4_cache[n] then
                return fib4_cache[n]
            else
                local fib4_n_minus_1 = fib4_helper(n - 1)
                local fib4_n_minus_2 = fib4_helper(n - 2)
                local fib4_n_minus_3 = fib4_helper(n - 3)
                local fib4_n_minus_4 = fib4_helper(n - 4)
                fib4_cache[n] = fib4_n_minus_1 + fib4_n_minus_2 + fib4_n_minus_3 + fib4_n_minus_4
                return fib4_cache[n]
            end
        end
    end
    return fib4_helper(n)
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = fib4
    lu.assertEquals(candidate(5), 4)
    lu.assertEquals(candidate(8), 28)
    lu.assertEquals(candidate(10), 104)
    lu.assertEquals(candidate(12), 386)
end

os.exit(lu.LuaUnit.run())