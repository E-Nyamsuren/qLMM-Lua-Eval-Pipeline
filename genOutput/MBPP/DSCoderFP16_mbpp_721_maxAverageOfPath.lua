-- Given a square matrix of size N*N given as a table of tables, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
local function maxAverageOfPath(cost)
    local N = #cost
    local dp = {}
    for i = 0, N-1 do
        dp[i] = {}
        dp[i][0] = cost[i][0]
        for j = 1, N-1 do
            dp[i][j] = cost[i][j] + min(dp[i-1][j], dp[i][j-1])
        end
    end
    local max_val = dp[N-1][N-1]
    local max_path = {}
    while N > 0 do
        max_path[N] = max_val
        max_val = dp[N-1][N-1]
        if max_val == dp[N][N-1] then
            N = N - 1
        else
            N = N - 1
            max_val = dp[N][N]
        end
    end
    local avg_path = {}
    for i = 1, #max_path do
        avg_path[i] = max_path[i]
    end
    return avg_path
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