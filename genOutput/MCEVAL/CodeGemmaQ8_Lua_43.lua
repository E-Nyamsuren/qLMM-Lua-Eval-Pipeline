
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
    local q = {}
    for i, v in ipairs(qq) do
        q[v] = i
    end
    local dp = {}
    local function f(p)
        local res = 0
        for i = 1, k do
            res = res * 10 + p[i]
        end
        return res
    end
    local function g(p)
        local res = 0
        for i = 1, k do
            res = res * 10 + q[p[i]]
        end
        return res
    end
    local function h(p)
        local res = 0
        for i = 1, k do
            res = res * 10 + p[i]
        end
        return res
    end
    local function dfs(p, i)
        if i > k then
            dp[f(p)] = (dp[f(p)] or 0) + 1
            return
        end
        for j = i, k do
            local t = p[i]
            p[i] = p[j]
            p[j] = t
            dfs(p, i + 1)
            t = p[i]
            p[i] = p[j]
            p[j] = t
        end
    end
    local function dfs2(p, i)
        if i > k then


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