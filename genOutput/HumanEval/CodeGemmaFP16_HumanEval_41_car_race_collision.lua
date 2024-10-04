-- Imagine a road that's a perfectly straight infinitely long line.
-- n cars are driving left to right;  simultaneously, a different set of n cars
-- are driving right to left.   The two sets of cars start out being very far from
-- each other.  All cars move in the same speed.  Two cars are said to collide
-- when a car that's moving left to right hits a car that's moving right to left.
-- However, the cars are infinitely sturdy and strong; as a result, they continue moving
-- in their trajectory as if they did not collide.
-- This function outputs the number of such collisions.
local function car_race_collision(n)
    local cars_left = {}
    local cars_right = {}
    local collisions = 0
    for i = 1, n do
        cars_left[i] = {
            x = 0,
            y = 0,
            dx = 1,
            dy = 0,
        }
        cars_right[i] = {
            x = 0,
            y = 0,
            dx = -1,
            dy = 0,
        }
    end
    while true do
        for i = 1, n do
            cars_left[i].x = cars_left[i].x + cars_left[i].dx
            cars_right[i].x = cars_right[i].x + cars_right[i].dx
        end
        for i = 1, n do
            for j = 1, n do
                if i ~= j then
                    if cars_left[i].x == cars_right[j].x and cars_left[i].y == cars_right[j].y then
                        collisions = collisions + 1
                    end
                end
            end
        end
        if collisions == n then
            return collisions
        end
    end
end
<|file_separator|>

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