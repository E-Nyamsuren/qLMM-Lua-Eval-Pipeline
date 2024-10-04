-- Given a square matrix of size N*N given as a table of tables, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
local function maxAverageOfPath(cost)
	local n = #cost
	local dp = {}
	for i = 1, n do
		dp[i] = {}
		for j = 1, n do
			dp[i][j] = cost[i][j]
		end
	end
	for i = 1, n do
		for j = 1, n do
			if i == 1 and j == 1 then
				dp[i][j] = cost[i][j]
			elseif i == 1 then
				dp[i][j] = dp[i][j-1] + cost[i][j]
			elseif j == 1 then
				dp[i][j] = dp[i-1][j] + cost[i][j]
			else
				dp[i][j] = math.max(dp[i-1][j], dp[i][j-1]) + cost[i][j]
			end
		end
	end
	return dp[n][n] / (n * n)
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