-- Given a square matrix of size N*N given as a table of tables, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
local function maxAverageOfPath(cost)
    local maxAverage = 0
    local maxPath = {}
    local visited = {}
    local n = #cost
    for i = 1, n do
        for j = 1, n do
            if visited[i] == nil then
                visited[i] = {}
            end
            if visited[i][j] == nil then
                visited[i][j] = 0
            end
            if visited[i][j] == 0 then
                local sum = 0
                local count = 0
                for k = i, n do
                    if visited[k] == nil then
                        visited[k] = {}
                    end
                    if visited[k][j] == nil then
                        visited[k][j] = 0
                    end
                    if visited[k][j] == 0 then
                        sum = sum + cost[k][j]
                        count = count + 1
                        visited[k][j] = 1
                    end
                end
                for k = j, n do
                    if visited[i][k] == nil then
                        visited[i][k] = 0
                    end
                    if visited[i][k] == 0 then
                        sum = sum + cost[i][k]
                        count = count + 1
                        visited[i][k] = 1
                    end
                end
                if count > 0 then
                    local average = sum / count
                    if average > maxAverage then
                        maxAverage = average
                        maxPath = {i, j}
                    end
                end
            end
        end
    end
    return maxAverage, maxPath
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