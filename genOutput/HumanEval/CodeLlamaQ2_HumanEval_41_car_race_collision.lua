-- Imagine a road that's a perfectly straight infinitely long line.
-- n cars are driving left to right;  simultaneously, a different set of n cars
-- are driving right to left.   The two sets of cars start out being very far from
-- each other.  All cars move in the same speed.  Two cars are said to collide
-- when a car that's moving left to right hits a car that's moving right to left.
-- However, the cars are infinitely sturdy and strong; as a result, they continue moving
-- in their trajectory as if they did not collide.
-- This function outputs the number of such collisions.
local function car_race_collision(n)
  local collisions = 0
  local left_to_right = {}
  local right_to_left = {}
  for i = 1, n do
    left_to_right[i] = i
    right_to_left[i] = n + 1 - i
  end
  while #left_to_right > 0 and #right_to_left > 0 do
    local left_to_right_head = left_to_right[1]
    local right_to_left_head = right_to_left[1]
    local left_to_right_tail = left_to_right[#left_to_right]
    local right_to_left_tail = right_to_left[#right_to_left]
    if left_to_right_head < right_to_left_tail then
      left_to_right[#left_to_right] = right_to_left_head
      right_to_left[#right_to_left] = left_to_right_tail
    else
      collisions = collisions + 1
      left_to_right[#left_to_right] = right_to_left_tail
      right_to_left[#right_to_left] = left_to_right_head
    end
    left_to_right[1] = left_to_right_head
    right_to_left[1] = right_to_left_head
  end
  return collisions
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