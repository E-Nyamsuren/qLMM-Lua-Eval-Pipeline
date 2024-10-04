
--[[ 
Given n doors arranged in a circle, the player starts in front of door 1. 
Each turn, the player can choose a number i and pay a cost C_i to move i steps to the right 
and then open the door at that position. It is guaranteed that C_i >= C_{i+1} for 1 <= i < n.
The task is to determine the minimum total cost required to open all doors.

Example:
    >>> minTotalCost(3, {1, 1, 1})
    3
]]
function minTotalCost(n, C)
    local min_cost = 0
    local i = 1
    local direction = 1
    local steps = 0
    local current_door = 1
    
    while steps < n do
        min_cost = min_cost + C[current_door]
        steps = steps + 1
        current_door = current_door + direction
        if current_door > n then
            direction = -1
            current_door = n - (current_door - n)
        elseif current_door < 1 then
            direction = 1
            current_door = 1 + (current_door - 1)
        end
    end
    
    return min_cost
end

lu = require('luaunit')

function testMinTotalCost()
	local candidate = minTotalCost
	lu.assertTrue(candidate(5, {4, 3, 3, 3, 3}) == 15)
	lu.assertTrue(candidate(3, {1, 1, 1}) == 3)
	lu.assertTrue(candidate(4, {5, 4, 3, 2}) == 11)
	lu.assertTrue(candidate(4, {100, 99, 98, 97}) == 391)
	lu.assertTrue(candidate(6, {10, 9, 8, 7, 6, 5}) == 35)
	lu.assertTrue(candidate(7, {2, 2, 2, 2, 2, 2, 2}) == 14)
	lu.assertTrue(candidate(8, {9, 7, 7, 7, 7, 7, 7, 7}) == 56)
	lu.assertTrue(candidate(9, {3, 2, 2, 2, 2, 2, 2, 2, 2}) == 18)
	lu.assertTrue(candidate(10, {6, 5, 5, 5, 5, 5, 5, 5, 5, 5}) == 50)
	lu.assertTrue(candidate(11, {8, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}) == 11)
end

os.exit(lu.LuaUnit.run())