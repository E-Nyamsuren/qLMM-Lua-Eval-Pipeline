-- Write a function to find the length of the longest palindromic subsequence in the given string.
local function lps(str)
	local n = #str
	local dp = {}
	for i = 1, n do
		dp[i] = {}
	end
	for i = 1, n do
		dp[i][i] = 1
	end
	for i = 1, n - 1 do
		if str[i] == str[i + 1] then
			dp[i][i + 1] = 2
		end
	end
	for len = 2, n do
		for i = 1, n - len + 1 do
			j = i + len - 1
			if str[i] == str[j] and dp[i + 1][j - 1] then
				dp[i][j] = dp[i + 1][j - 1] + 2
			end
		end
	end
	local max = 0
	for i = 1, n do
		if dp[i][i] > max then
			max = dp[i][i]
		end
	end
	return max
end


lu = require('luaunit')

function test_humaneval()
local candidate = lps
    lu.assertEquals(candidate('TENS FOR TENS'), 5)
    lu.assertEquals(candidate('CARDIO FOR CARDS'), 7)
    lu.assertEquals(candidate('PART OF THE JOURNEY IS PART'), 9)
end

os.exit(lu.LuaUnit.run())