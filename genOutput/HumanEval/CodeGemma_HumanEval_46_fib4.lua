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
    local a = 0
    local b = 0
    local c = 2
    local d = 0
    local e = 0
    local f = 0
    local g = 0
    local h = 0
    local i = 0
    local j = 0
    local k = 0
    local l = 0
    local m = 0
    local n = 0
    local o = 0
    local p = 0
    local q = 0
    local r = 0
    local s = 0
    local t = 0
    local u = 0
    local v = 0
    local w = 0
    local x = 0
    local y = 0
    local z = 0
    local aa = 0
    local bb = 0
    local cc = 0
    local dd = 0
    local ee = 0
    local ff = 0
    local gg = 0
    local hh = 0
    local ii = 0
    local jj = 0
    local kk = 0
    local ll = 0
    local mm = 0
    local nn = 0
    local oo = 0
    local pp = 0
    local qq = 0
    local rr = 0
    local ss = 0
    local tt = 0
    local uu = 0
    local vv = 

lu = require('luaunit')

function test_humaneval()
local candidate = fib4
    lu.assertEquals(candidate(5), 4)
    lu.assertEquals(candidate(8), 28)
    lu.assertEquals(candidate(10), 104)
    lu.assertEquals(candidate(12), 386)
end

os.exit(lu.LuaUnit.run())