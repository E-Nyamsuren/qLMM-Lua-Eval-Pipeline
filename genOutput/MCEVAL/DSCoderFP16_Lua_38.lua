
--[[
Given n positive integers representing the count of each number from 1 to n,
find the maximum sum of the mode (most frequent element) for all prefixes of
a sequence constructed from these numbers. The mode is the largest number among
the most frequent elements in a sequence.
    >>> maxModeSum(3, {1, 2, 3})
    17
    A sequence that reaches its maximum value is (3,2,3,1,2,2).
]]--
function maxModeSum(n, counts)
    local maxSum = 0
    local maxMode = nil
    for i = 1, n do
        local sum = 0
        local mode = counts[i]
        for j = 1, i do
            sum = sum + mode
        }
        if sum > maxSum then
            maxSum = sum
            maxMode = mode
        }
    }
    return maxSum
end

lu = require('luaunit')

function testMaxModeSum()
    local candidate = maxModeSum
    lu.assertTrue(candidate(3, {1, 3, 2}) == 17)
    lu.assertTrue(candidate(4, {4, 1, 2, 3}) == 37)
    lu.assertTrue(candidate(2, {1, 1}) == 4)
    lu.assertTrue(candidate(5, {1, 2, 3, 4, 5}) == 75)
    lu.assertTrue(candidate(1, {100000}) == 100000)
    lu.assertTrue(candidate(5, {5, 3, 2, 4, 1}) == 62)
    lu.assertTrue(candidate(3, {100000, 100000, 100000}) == 900000)
    lu.assertTrue(candidate(3, {2, 2, 5}) == 27)
    lu.assertTrue(candidate(4, {4, 4, 4, 4}) == 64)
    lu.assertTrue(candidate(6, {1, 2, 3, 4, 5, 6}) == 126)
    lu.assertTrue(candidate(3, {3, 1, 2}) == 16)
end

os.exit(lu.LuaUnit.run())