-- You are given a rectangular grid of wells. Each row represents a single well,
-- and each 1 in a row represents a single unit of water.
-- Each well has a corresponding bucket that can be used to extract water from it, 
-- and all buckets have the same capacity.
-- Your task is to use the buckets to empty the wells.
-- Output the number of times you need to lower the buckets.
-- Example 1:
-- >>> max_fill({{0, 0, 1, 0}, {0, 1, 0, 0}, {1, 1, 1, 1}}, 1)
-- 6
-- Example 2:
-- >>> max_fill({{0, 0, 1, 1}, {0, 0, 0, 0}, {1, 1, 1, 1}, {0, 1, 1, 1}}, 2)
-- 5
-- Example 3:
-- >>> max_fill({{0, 0, 0}, {0, 0, 0}}, 5)
-- 0
-- Constraints:
--     * all wells have the same length
--     * 1 <= grid.length <= 10^2
--     * 1 <= grid[:,1].length <= 10^2
--     * grid[i][j] -> 0 | 1
--     * 1 <= capacity <= 10
local function max_fill(grid, capacity)
  local n = #grid
  local m = #grid[1]
  local max_water = 0
  local visited = {}
  local queue = {}
  local function bfs(x, y)
    local visited = {}
    local queue = {}
    visited[x] = visited[y] = true
    queue[#queue+1] = {x, y}
    while #queue > 0 do
      local x, y = unpack(queue[#queue])
      queue[#queue] = nil
      for i = 0, 1 do
        for j = 0, 1 do
          if x + i < n and y + j < m and not visited[

lu = require('luaunit')

function test_humaneval()
local candidate = max_fill
    lu.assertEquals(candidate({{0, 0, 1, 0}, {0, 1, 0, 0}, {1, 1, 1, 1}}, 1), 6)
    lu.assertEquals(candidate({{0, 0, 1, 1}, {0, 0, 0, 0}, {1, 1, 1, 1}, {0, 1, 1, 1}}, 2), 5)
    lu.assertEquals(candidate({{0, 0, 0}, {0, 0, 0}}, 5), 0)
    lu.assertEquals(candidate({{1, 1, 1, 1}, {1, 1, 1, 1}}, 2), 4)
    lu.assertEquals(candidate({{1, 1, 1, 1}, {1, 1, 1, 1}}, 9), 2)
end

os.exit(lu.LuaUnit.run())