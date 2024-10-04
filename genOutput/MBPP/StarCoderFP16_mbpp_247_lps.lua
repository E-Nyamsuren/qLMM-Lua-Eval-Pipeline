-- Write a function to find the length of the longest palindromic subsequence in the given string.
local function lps(str)
	local len = #str
	local dp = {}
	for i = 1, len do
		dp[i] = {}
		for j = 1, len do
			dp[i][j] = 0
		end
	end
	for i = 1, len do
		dp[i][i] = 1
	end
	for i = 1, len - 1 do
		if str:sub(i, i) == str:sub(i + 1, i + 1) then
			dp[i][i + 1] = 2
		end
	end
	for i = 1, len - 2 do
		if str:sub(i, i) == str:sub(i + 2, i + 2) then
			dp[i][i + 2] = 3
		end
	end
	for i = 3, len do
		for j = 1, len - i + 1 do
			if str:sub(j, j) == str:sub(j + i - 1, j + i - 1) then
				dp[j][j + i - 1] = i
			else
				dp[j][j + i - 1] = math.max(dp[j][j + i - 2], dp[j + 1][j + i - 1])
			end
		end
	end
	return dp[1][len]
end

lu = require('luaunit')

function test_humaneval()
local candidate = lps
    lu.assertEquals(candidate('TENS FOR TENS'), 5)
    lu.assertEquals(candidate('CARDIO FOR CARDS'), 7)
    lu.assertEquals(candidate('PART OF THE JOURNEY IS PART'), 9)
end

os.exit(lu.LuaUnit.run())