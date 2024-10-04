-- Given a square matrix of size N*N given as a table of tables, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
local function maxAverageOfPath(cost)
    local N = #cost
    local maxAvg = 0
    local maxPath = {}
    local function dfs(i, j, path, totalCost, cellCount)
        if i == N and j == N then
            local avg = totalCost / cellCount
            if avg > maxAvg then
                maxAvg = avg
                maxPath = path
            end
        else
            for _, dir in ipairs({{1, 0}, {0, 1}}) do
                local newI, newJ = i + dir[1], j + dir[2]
                if newI >= 1 and newI <= N and newJ >= 1 and newJ <= N then
                    dfs(newI, newJ, path .. "->" .. cost[i][j], totalCost + cost[i][j], cellCount + 1)
                end
            end
        end
    end
    for i = 1, N do
        for j = 1, N do
            dfs(i, j, "->" .. cost[i][j], cost[i][j], 1)
        end
    end
    return maxAvg, maxPath
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