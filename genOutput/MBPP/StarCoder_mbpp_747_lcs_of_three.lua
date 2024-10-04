-- Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
local function lcs_of_three(X, Y, Z)
	local m = #X
	local n = #Y
	local o = #Z
	local dp = {}
	for i = 1, m + 1 do
		dp[i] = {}
		for j = 1, n + 1 do
			dp[i][j] = {}
			for k = 1, o + 1 do
				dp[i][j][k] = 0
			end
		end
	end
	for i = 1, m do
		for j = 1, n do
			for k = 1, o do
				if X[i] == Y[j] and Y[j] == Z[k] then
					dp[i + 1][j + 1][k + 1] = dp[i][j][k] + 1
				else
					dp[i + 1][j + 1][k + 1] = math.max(dp[i + 1][j][k + 1], dp[i + 1][j + 1][k], dp[i][j + 1][k + 1], dp[i][j][k])
				end
			end
		end
	end
	return dp[m + 1][n + 1][o + 1]
end

lu = require('luaunit')

function test_humaneval()
local candidate = lcs_of_three
    lu.assertEquals(candidate('AGGT12', '12TXAYB', '12XBA'), 2)
    lu.assertEquals(candidate('Reels', 'Reelsfor', 'ReelsforReels'), 5)
    lu.assertEquals(candidate('abcd1e2', 'bc12ea', 'bd1ea'), 3)
end

os.exit(lu.LuaUnit.run())