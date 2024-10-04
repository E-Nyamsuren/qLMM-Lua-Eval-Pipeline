-- Given a square matrix of size N*N given as a table of tables, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
local function maxAverageOfPath(cost)
    local n = #cost
    local dp = {}
    for i = 0, n do
        dp[i] = {}
        for j = 0, n do
            dp[i][j] = -1
    end
    end
    dp[0][0] = cost[0][0]
    for i = 1, n do
        dp[i][0] = dp[i-1][0] + cost[i][0]
        dp[0][i] = dp[0][i-1] + cost[0][i]
    end
    for i = 1, n do
        for j = 1, n do
            dp[i][j] = math.max(dp[i-1][j], dp[i][j-1]) + cost[i][j]
        end
    end
    local max_avg = -1
    local total_cells = n * n
    for i = 0, n do
        for j = 0, n do
            local total_cost = dp[i][j]
            local cells_visited = i + j + 2
            local avg = total_cost / cells_visited
            if avg > max_avg then
                max_avg = avg
            end
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