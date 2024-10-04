
--[[
Given three integers n, m, and k, find the number of sequences consisting of n '(' and m ')', such that
the longest balanced subsequence is of length 2 * k. The result should be calculated modulo
1,000,000,007 (10^9 + 7).

For example:
    >>> countBalancedSubsequences(2, 2, 2)
    2
]]--
function countBalancedSubsequences(n, m, k)
    local MOD = 1000000007
    local dp = {}
    for i = 0, n + m + 1 do
        dp[i] = {}
        for j = 0, i + 1 do
            dp[i][j] = 0
        end
    end
    dp[0][0] = 1
    for i = 1, n + m do
        for j = 0, i + 1 do
            if j > i then
                break
            end
            dp[i][j] = (dp[i - 1][j] + dp[i - 1][j - 1]) % MOD
            if j > 0 then
                dp[i][j] = (dp[i][j] + dp[i - 1][j - 1]) % MOD
            end
        end
    end
    local res = 0
    for i = k, n + m + 1 do
        res = (res + dp[i - 1][i]) % MOD
    end
    return res
end

lu = require('luaunit')

function testCountBalancedSubsequences()
    local candidate = countBalancedSubsequences
    lu.assertTrue(candidate(2, 2, 2) == 2)
    lu.assertTrue(candidate(3, 2, 3) == 0)
    lu.assertTrue(candidate(3, 2, 1) == 4)
    lu.assertTrue(candidate(4, 3, 2) == 14)
    lu.assertTrue(candidate(5, 5, 2) == 35)
    lu.assertTrue(candidate(6, 1, 1) == 6)
    lu.assertTrue(candidate(1, 6, 1) == 6)
    lu.assertTrue(candidate(7, 2, 2) == 27)
    lu.assertTrue(candidate(8, 3, 3) == 110)
    lu.assertTrue(candidate(10, 10, 5) == 10659)
    lu.assertTrue(candidate(20, 20, 10) == 574221648)
    lu.assertTrue(candidate(2000, 2000, 1000) == 854104531)
    lu.assertTrue(candidate(2000, 1999, 1000) == 334874485)
    lu.assertTrue(candidate(2000, 2000, 1999) == 259428024)
end

os.exit(lu.LuaUnit.run())