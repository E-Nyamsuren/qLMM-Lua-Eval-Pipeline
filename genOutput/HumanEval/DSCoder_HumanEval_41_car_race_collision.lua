-- Imagine a road that's a perfectly straight infinitely long line.
-- n cars are driving left to right;  simultaneously, a different set of n cars
-- are driving right to left.   The two sets of cars start out being very far from
-- each other.  All cars move in the same speed.  Two cars are said to collide
-- when a car that's moving left to right hits a car that's moving right to left.
-- However, the cars are infinitely sturdy and strong; as a result, they continue moving
-- in their trajectory as if they did not collide.
-- This function outputs the number of such collisions.
local function car_race_collision(n)
    return n * n
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