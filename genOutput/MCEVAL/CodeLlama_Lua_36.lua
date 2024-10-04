
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
    local dp = {}
    for i = 1, n do
        dp[i] = C[i]
    end
    for i = 2, n do
        for j = 1, i - 1 do
            dp[j] = math.min(dp[j], dp[j + 1] + C[j])
        end
    end
    return dp[1]
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