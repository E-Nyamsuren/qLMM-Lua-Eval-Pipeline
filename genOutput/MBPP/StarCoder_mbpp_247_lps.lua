-- Write a function to find the length of the longest palindromic subsequence in the given string.
local function lps(str)
	local n = #str
	local dp = {}
	for i = 1, n do
		dp[i] = {}
		for j = 1, n do
			dp[i][j] = 0
		end
	end
	for i = 1, n do
		dp[i][i] = 1
	end
	for cl = 2, n do
		for i = 1, n - cl + 1 do
			j = i + cl - 1
			if str[i] == str[j] then
				dp[i][j] = dp[i + 1][j - 1] + 2
			else
				dp[i][j] = math.max(dp[i][j - 1], dp[i + 1][j])
			end
		end
	end
	return dp[1][n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = lps
    lu.assertEquals(candidate('TENS FOR TENS'), 5)
    lu.assertEquals(candidate('CARDIO FOR CARDS'), 7)
    lu.assertEquals(candidate('PART OF THE JOURNEY IS PART'), 9)
end

os.exit(lu.LuaUnit.run())