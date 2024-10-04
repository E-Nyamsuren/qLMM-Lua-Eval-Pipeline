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
    local directions = { {0, 1}, {1, 0} }
    local maxCost = cost[0][0]
    local maxAvg = maxCost
    local totalVisited = 1
    local totalCost = maxCost
    local queue = { {0, 0, maxCost, 1} }
    while #queue > 0 do
        local cur = table.remove(queue, 1)
        local x, y, curCost, visited = cur[1], cur[2], cur[3], cur[4]
        for _, dir in pairs(directions) do
            local nx, ny = x + dir[1], y + dir[2]
            if nx < n and ny < n then
                local newCost = curCost + cost[nx][ny]
                local newAvg = newCost / (visited + 1)
                if dp[nx][ny] < newCost or (dp[nx][ny] == newCost and dp[nx][ny] == -1) then
                    dp[nx][ny] = newCost
                    table.insert(queue, {nx, ny, newCost, visited + 1})
                    if newAvg > maxAvg then
                        maxAvg = newAvg
                    end
                end
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