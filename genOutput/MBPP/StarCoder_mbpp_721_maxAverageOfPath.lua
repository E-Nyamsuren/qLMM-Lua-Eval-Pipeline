-- Given a square matrix of size N*N given as a table of tables, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
local function maxAverageOfPath(cost)
	local N = #cost
	local dp = {}
	for i = 1, N do
		dp[i] = {}
		for j = 1, N do
			dp[i][j] = {}
			dp[i][j][0] = 0
			dp[i][j][1] = 0
		end
	end
	for i = 1, N do
		dp[i][1][0] = cost[i][1]
		dp[1][i][1] = cost[1][i]
	end
	for i = 2, N do
		for j = 2, N do
			dp[i][j][0] = dp[i-1][j][0] + cost[i][j]
			dp[i][j][1] = dp[i][j-1][1] + cost[i][j]
			dp[i][j][2] = math.max(dp[i][j][0], dp[i][j][1])
		end
	end
	local max_avg = 0
	for i = 1, N do
		for j = 1, N do
			local avg = dp[i][j][2] / (i + j - 1)
			max_avg = math.max(max_avg, avg)
		end
	end
	return max_avg
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