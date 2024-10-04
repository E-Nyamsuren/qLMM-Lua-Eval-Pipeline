-- Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
local function lcs_of_three(X, Y, Z)
    local m = #X
    local n = #Y
    local p = #Z
    local dp = {}
    for i = 0, m do
        dp[i] = {}
        for j = 0, n do
            dp[i][j] = {}
            for k = 0, p do
                dp[i][j][k] = 0
            end
        end
    end
    for i = 1, m do
        for j = 1, n do
            for k = 1, p do
                if X:sub(i, i):byte() == Y:sub(j, j):byte() and
                    Y:sub(j, j):byte() == Z:sub(k, k):byte() then
                    dp[i][j][k] = math.max(dp[i - 1][j - 1][k - 1] + 1, dp[i][j][k])
                else
                    dp[i][j][k] = math.max(dp[i - 1][j][k], dp[i][j - 1][k], dp[i][j][k - 1])
                end
            end
        end
    end
    return dp[m][n][p]
end

lu = require('luaunit')

function test_humaneval()
local candidate = lcs_of_three
    lu.assertEquals(candidate('AGGT12', '12TXAYB', '12XBA'), 2)
    lu.assertEquals(candidate('Reels', 'Reelsfor', 'ReelsforReels'), 5)
    lu.assertEquals(candidate('abcd1e2', 'bc12ea', 'bd1ea'), 3)
end

os.exit(lu.LuaUnit.run())