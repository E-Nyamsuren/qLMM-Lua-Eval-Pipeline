-- Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
local function lcs_of_three(X, Y, Z)
    local m = string.len(X)
    local n = string.len(Y)
    local o = string.len(Z)
    local dp = {}
    for i = 0, m do
        dp[i] = {}
    end
    for j = 0, n do
        dp[j] = {}
    end
    for k = 0, o do
        dp[k] = {}
    end
    for i = 1, m do
        for j = 1, n do
            for k = 1, o do
                if X[i] == Y[j] and X[i] == Z[k] then
                    dp[i][j][k] = dp[i-1][j-1][k-1] + 1
                else
                    dp[i][j][k] = math.max(dp[i-1][j][k], dp[i][j-1][k], dp[i][j][k-1])
                end
            end
        end
    end
    local lcs = ""
    for i = m, 1 by -1 do
        for j = n, 1 by -1 do
            for k = o, 1 by -1 do
                if X[i] == Y[j] and X[i] == Z[k] then
                    lcs = X[i] .. lcs
                    i = i - 1
                    j = j - 1
                    k = k - 1
                elseif dp[i-1][j][k] >= dp[i][j][k] and dp[i][j][k] == dp[i][j][k-1] then
                    k = k - 1
                elseif dp[i][j-1][k] >= dp[i][j][k] and dp[i][j][k] == dp[i][j][k

lu = require('luaunit')

function test_humaneval()
local candidate = lcs_of_three
    lu.assertEquals(candidate('AGGT12', '12TXAYB', '12XBA'), 2)
    lu.assertEquals(candidate('Reels', 'Reelsfor', 'ReelsforReels'), 5)
    lu.assertEquals(candidate('abcd1e2', 'bc12ea', 'bd1ea'), 3)
end

os.exit(lu.LuaUnit.run())