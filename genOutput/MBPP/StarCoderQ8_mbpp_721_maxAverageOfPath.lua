-- Given a square matrix of size N*N given as a table of tables, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
local function maxAverageOfPath(cost)
	local N = #cost
	local dp = {}
	for i = 1, N do
		dp[i] = {}
		for j = 1, N do
			dp[i][j] = {}
			dp[i][j].max = 0
			dp[i][j].count = 0
		end
	end
	dp[1][1].max = cost[1][1]
	dp[1][1].count = 1
	for i = 2, N do
		dp[i][1].max = dp[i-1][1].max + cost[i][1]
		dp[i][1].count = dp[i-1][1].count + 1
	end
	for j = 2, N do
		dp[1][j].max = dp[1][j-1].max + cost[1][j]
		dp[1][j].count = dp[1][j-1].count + 1
	end
	for i = 2, N do
		for j = 2, N do
			dp[i][j].max = math.max(dp[i-1][j].max, dp[i][j-1].max) + cost[i][j]
			dp[i][j].count = math.max(dp[i-1][j].count, dp[i][j-1].count) + 1
		end
	end
	local max = 0
	for i = 1, N do
		for j = 1, N do
			max = math.max(max, dp[i][j].max / dp[i][j].count)
		end
	end
	return max
end


lu = require('luaunit')

function test_humaneval()
local candidate = maxAverageOfPath
    lu.assertEquals(candidate({{1, 2, 3}, {6, 5, 4}, {7, 3, 9}}), 5.2)
    lu.assertEquals(candidate({{2, 3, 4}, {7, 6, 5}, {8, 4, 10}}), 6.2)
    lu.assertEquals(candidate({{3, 4, 5}, {8, 7, 6}, {9, 5, 11}}), 7.2)
    lu.assertEquals(candidate({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}), 5.8)
end

os.exit(lu.LuaUnit.run())