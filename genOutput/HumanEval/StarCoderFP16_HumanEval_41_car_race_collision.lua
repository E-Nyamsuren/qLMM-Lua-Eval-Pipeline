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
	local left_cars = {}
	local right_cars = {}
	for i = 1, n do
		left_cars[i] = i
		right_cars[i] = n + 1 - i
	end
	while #left_cars > 0 do
		local left_car = table.remove(left_cars, 1)
		local right_car = table.remove(right_cars, 1)
		if left_car < right_car then
			table.insert(left_cars, left_car + 1)
			table.insert(right_cars, right_car - 1)
		else
			collisions = collisions + 1
		end
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