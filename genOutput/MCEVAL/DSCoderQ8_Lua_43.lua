
--[[
Given a permutation q of n elements and an integer k, find the number of permutations p of n elements
such that f(p) = q, where f(p) is the lexicographically smallest permutation that can be obtained by
dividing p into exactly k non-empty contiguous segments and sorting each segment (that is, choose k-1 
breakpoints 1 <= x1 < x2 < ... < x(k-1) < n, and divide p into [1, x1], (x1, x2], ..., (x(k-1), n]).
The result should be modulo 998244353. 

    >>> countPermutations(2, 1, {1, 2})
    2
--]]
function countPermutations(n, k, qq)
    local MOD = 998244353
    local fact = {1}
    for i = 1, n do
        fact[i+1] = (fact[i] * i) % MOD
    end
    local invfact = {1}
    for i = 1, n do
        invfact[i+1] = invfact[i] * fact[i+1] % MOD
    end
    local inv = {1, 1}
    for i = 2, n do
        inv[i+1] = (MOD - MOD / i) * inv[MOD % i] % MOD
    end
    local comb = {}
    for i = 0, n do
        comb[i] = {}
        comb[i][0] = 1
        for j = 1, i do
            comb[i][j] = (comb[i-1][j-1] + comb[i-1][j]) % MOD
        end
    end
    local dp = {}
    for i = 0, n do
        dp[i] = {}
        dp[i][0] = 1
        for j = 1, i do
            dp[i][j] = (dp[i-1][j] + dp[i-1

lu = require('luaunit')

function testCountPermutations()
    local candidate = countPermutations
    local q1 = {1, 2}
    lu.assertTrue(candidate(2, 1, q1) == 2)

    local q2 = {3, 1, 2}
    lu.assertTrue(candidate(3, 3, q2) == 1)

    local q3 = {1, 2, 3, 6, 5, 4}
    lu.assertTrue(candidate(6, 3, q3) == 13)

    local q4 = {1, 2, 3, 4, 5, 6}
    lu.assertTrue(candidate(6, 1, q4) == 720)

    local q5 = {1, 2, 5, 3, 4, 5}
    lu.assertTrue(candidate(6, 3, q5) == 0)

    local q6 = {1, 2, 3, 4, 5, 6, 7, 8, 9}
    lu.assertTrue(candidate(9, 9, q6) == 1)

    local q7 = {1, 2, 3, 4, 5, 6, 7, 9, 8}
    lu.assertTrue(candidate(9, 2, q7) == 29093)
end

os.exit(lu.LuaUnit.run())