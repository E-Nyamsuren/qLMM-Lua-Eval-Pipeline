
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
    local mod = 10^9 + 7
    local function gcd(a, b)
        if b == 0 then return a end
        return gcd(b, a % b)
    end
    local function lcm(a, b)
        return a * b / gcd(a, b)
    end
    local function cut(a, b, c, d)
        local x = (a * b) / (a + b)
        local y = (c * d) / (c + d)
        return x + y
    end
    local function dfs(n, m, k)
        if n == 0 or m == 0 then return 0 end
        if n * m < k then return 1 end
        local l = lcm(n, m)
        local x = cut(n, m, l, l)
        local y = cut(n, m, l, 2 * l)
        local z = cut(n, m, 2 * n, l)
        local w = cut(n, m, 2 * n, 2 * l)
        return (dfs(n, m, k - x) + dfs(n, m, k - y) + dfs(n, m, k - z) + dfs(n, m, k - w)) % mod
    end
    

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