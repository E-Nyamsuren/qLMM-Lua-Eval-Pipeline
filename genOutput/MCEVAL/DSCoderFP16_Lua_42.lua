
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
    local mod = 10^9+7
    local dp = {}
    for i = 0, n do
        dp[i] = {}
        for j = 0, m do
            dp[i][j] = {0, 0}
        end
    end
    dp[0][0] = {1, 0}
    for i = 0, n do
        for j = 0, m do
            if i > 0 then
                dp[i][j][0] = (dp[i-1][j][0] + dp[i-1][j][1]) % mod
            end
            if j > 0 then
                dp[i][j][1] = (dp[i][j-1][0] + dp[i][j-1][1]) % mod
            end
        end
    end
    local cuts = 0
    local total = 1
    for i = 0, n+m-2 do
        cuts = (cuts + dp[i%n][i%m][0] * dp[(n+m-2)%n][i%m][1]) % mod
        total = (total * dp[i%n][i%m][0]) % mod
    end
    return (cuts * total) % mod
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