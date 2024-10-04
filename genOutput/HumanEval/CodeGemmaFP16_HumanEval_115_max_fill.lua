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
    local buckets = {}
    local count = 0
    for i = 1, n do
        buckets[i] = {}
        for j = 1, m do
            buckets[i][j] = capacity
        end
    end
    for i = 1, n do
        for j = 1, m do
            if grid[i][j] == 1 then
                local left = j - 1
                local right = j + 1
                local up = i - 1
                local down = i + 1
                while left >= 1 and buckets[i][left] > 0 do
                    buckets[i][left] = buckets[

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