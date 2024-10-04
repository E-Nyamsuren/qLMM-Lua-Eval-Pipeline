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
      visited[i][j] = true
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local currentVisited = 0
      local currentPath = {}
      local currentCost = 0
      local

lu = require('luaunit')

function test_humaneval()
local candidate = maxAverageOfPath
    lu.assertEquals(candidate({{1, 2, 3}, {6, 5, 4}, {7, 3, 9}}), 5.2)
    lu.assertEquals(candidate({{2, 3, 4}, {7, 6, 5}, {8, 4, 10}}), 6.2)
    lu.assertEquals(candidate({{3, 4, 5}, {8, 7, 6}, {9, 5, 11}}), 7.2)
    lu.assertEquals(candidate({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}), 5.8)
end

os.exit(lu.LuaUnit.run())