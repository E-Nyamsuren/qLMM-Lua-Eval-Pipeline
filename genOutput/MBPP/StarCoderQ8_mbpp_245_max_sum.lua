-- Write a function that takes a table and finds the maximum sum of a bitonic subsequence for the given table, where a sequence is bitonic if it is first increasing and then decreasing.
local function max_sum(arr)
	local n = #arr
	local dp = {}
	for i = 1, n do
		dp[i] = {}
		dp[i][i] = arr[i]
	end
	for i = 1, n - 1 do
		dp[i][i + 1] = arr[i] + arr[i + 1]
	end
	for len = 3, n do
		for i = 1, n - len + 1 do
			local j = i + len - 1
			dp[i][j] = math.max(dp[i + 1][j], dp[i][j - 1]) + arr[i] + arr[j]
		end
	end
	return dp[1][n]
end


lu = require('luaunit')

function test_humaneval()
local candidate = max_sum
    lu.assertEquals(candidate({1, 15, 51, 45, 33, 100, 12, 18, 9}), 194)
    lu.assertEquals(candidate({80, 60, 30, 40, 20, 10}), 210)
    lu.assertEquals(candidate({2, 3, 14, 16, 21, 23, 29, 30}), 138)
end

os.exit(lu.LuaUnit.run())