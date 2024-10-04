-- Imagine a road that's a perfectly straight infinitely long line.
-- n cars are driving left to right;  simultaneously, a different set of n cars
-- are driving right to left.   The two sets of cars start out being very far from
-- each other.  All cars move in the same speed.  Two cars are said to collide
-- when a car that's moving left to right hits a car that's moving right to left.
-- However, the cars are infinitely sturdy and strong; as a result, they continue moving
-- in their trajectory as if they did not collide.
-- This function outputs the number of such collisions.
local function car_race_collision(n)
  local ans = 0
  local left = {}
  local right = {}
  for i = 1, n do
    left[i] = i
    right[i] = n + i
  end
  while #left > 0 and #right > 0 do
    local l = left[1]
    local r = right[1]
    if l < r then
      table.remove(left, 1)
      table.remove(right, 1)
      ans = ans + 1
    else
      table.remove(right, 1)
    end
  end
  return ans
end

lu = require('luaunit')

function test_humaneval()
local candidate = car_race_collision
    lu.assertEquals(candidate(2), 4)
    lu.assertEquals(candidate(3), 9)
    lu.assertEquals(candidate(4), 16)
    lu.assertEquals(candidate(8), 64)
    lu.assertEquals(candidate(10), 100)
end

os.exit(lu.LuaUnit.run())