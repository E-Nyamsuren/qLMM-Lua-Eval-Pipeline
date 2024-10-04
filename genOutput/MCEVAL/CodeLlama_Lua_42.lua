
--[[
Given a rectangle paper of size n x m placed on a plane Cartesian coordinate system with its bottom-left corner at (0,0) and top-right corner at (n,m),
you need to calculate the expected number of operations to cut the paper such that the remaining area is less than k. 
In each operation, a line is randomly chosen that is parallel to the axes, passes through points with integer coordinates, 
and cuts through (not just touching the edge) the paper. The bottom or right part of the paper along this line is then discarded.
The answer should be modulo 10^9+7.

For example:
    >>> expectedCuts(3, 3, 4)
    3
    >>> expectedCuts(5, 5, 12)
    2
--]]
function expectedCuts(n, m, k)
    local mod = 1000000007
    local x = 0
    local y = 0
    local z = 0
    local w = 0
    local h = 0
    local l = 0
    local r = 0
    local t = 0
    local b = 0
    local c = 0
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
    local a = 0
    local b = 0
    local c = 0
    local d = 0
    local e = 0
    local f = 0
    local g = 0
    local h = 0
    local i = 0


lu = require('luaunit')

function testExpectedCuts()
    local candidate = expectedCuts
    lu.assertTrue(candidate(2, 4, 10) == 0)
    lu.assertTrue(candidate(2, 4, 8) == 1)
    lu.assertTrue(candidate(2, 4, 2) == 833333342)
    lu.assertTrue(candidate(2, 4, 6) == 250000003)
    lu.assertTrue(candidate(3, 3, 4) == 666666673)
    lu.assertTrue(candidate(5, 5, 12) == 666666673)
    lu.assertTrue(candidate(6, 7, 20) == 722222229)
    lu.assertTrue(candidate(8, 8, 30) == 72727275)
    lu.assertTrue(candidate(10, 10, 50) == 714285721)
    lu.assertTrue(candidate(1, 10, 5) == 945634929)
    lu.assertTrue(candidate(10, 1, 5) == 945634929)
end

os.exit(lu.LuaUnit.run())