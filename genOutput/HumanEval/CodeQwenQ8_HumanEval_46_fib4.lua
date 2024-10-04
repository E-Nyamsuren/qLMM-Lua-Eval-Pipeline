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
    if n == 0 then
        return 0
    elseif n == 1 then
        return 0
    elseif n == 2 then
        return 2
    elseif n == 3 then
        return 0
    end
    local a, b, c, d = 0, 0, 2, 0
    for i = 4, n do
        local temp = a + b + c + d
        a, b, c, d = b, c, d, temp
    end
    return d
end
print(fib4(5)) -- 4
print(fib4(6)) -- 8
print(fib4(7)) -- 14
print(fib4(8)) -- 24
print(fib4(9)) -- 44
print(fib4(10)) -- 81
print(fib4(11)) -- 149
print(fib4(12)) -- 274
print(fib4(13)) -- 504
print(fib4(14)) -- 927
print(fib4(15)) -- 1705
print(fib4(16)) -- 2778
print(fib4(17)) -- 4637
print(fib4(18)) -- 7505
print(fib4(19)) -- 12167
print(fib4(20)) -- 19683
print(fib4(21

lu = require('luaunit')

function test_humaneval()
local candidate = fib4
    lu.assertEquals(candidate(5), 4)
    lu.assertEquals(candidate(8), 28)
    lu.assertEquals(candidate(10), 104)
    lu.assertEquals(candidate(12), 386)
end

os.exit(lu.LuaUnit.run())