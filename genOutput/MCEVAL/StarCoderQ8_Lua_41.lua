
--[[
Given three integers n, m, and k, find the number of sequences consisting of n '(' and m ')', such that
the longest balanced subsequence is of length 2 * k. The result should be calculated modulo
1,000,000,007 (10^9 + 7).

For example:
    >>> countBalancedSubsequences(2, 2, 2)
    2
]]--
function countBalancedSubsequences(n, m, k)
    mod = 1000000007
    dp = {}
    dp[0] = 1
    for i = 1, n + m do
        dp[i] = (dp[i - 1] * 2) % mod
        if i >= k * 2 + 1 then
            dp[i] = (dp[i] - dp[i - k * 2 - 1] + mod) % mod
        end
    end
    return dp[n + m]
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