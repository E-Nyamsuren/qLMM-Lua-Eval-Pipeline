
--[[
Given three integers n, m, and k, find the number of sequences consisting of n '(' and m ')', such that
the longest balanced subsequence is of length 2 * k. The result should be calculated modulo
1,000,000,007 (10^9 + 7).

For example:
    >>> countBalancedSubsequences(2, 2, 2)
    2
]]--
function countBalancedSubsequences(n, m, k)
    local result = 0
    local maxLength = 2 * k
    local maxLengthMod = maxLength % 1000000007
    local maxLengthPower = 1
    for i = 1, maxLength do
        maxLengthPower = maxLengthPower * 2 % 1000000007
    end
    local nPower = 1
    for i = 1, n do
        nPower = nPower * 2 % 1000000007
    end
    local mPower = 1
    for i = 1, m do
        mPower = mPower * 2 % 1000000007
    end
    local nmPower = nPower * mPower % 1000000007
    local nmPowerPower = nmPower * nmPower % 1000000007
    for i = 1, maxLength do
        result = result + nmPowerPower * maxLengthPower % 1000000007
        nmPowerPower = nmPowerPower * nmPower % 1000000007
        nmPower = nmPower * nPower % 1000000007
    end
    result = result % 1000000007
    return result
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