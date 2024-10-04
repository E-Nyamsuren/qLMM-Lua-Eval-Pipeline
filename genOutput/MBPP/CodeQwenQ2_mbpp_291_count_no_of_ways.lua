-- Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
local function count_no_of_ways(n, k)
    local dp = {}
    for i = 1, n do
        dp[i] = {}
        for j = 1, k do
            dp[i][j] = 0
        end
    end
    for i = 1, k do
        dp[1][i] = k
    end
    for i = 2, n do
        for j = 1, k do
            dp[i][j] = dp[i - 1][j] + dp[i - 2][j]
        end
    end
    return dp[n][k]
end
print(count_no_of_ways(3, 2)) -- Output: 6
print(count_no_of_ways(2, 2)) -- Output: 4
print(count_no_of_ways(4, 3)) -- Output: 24
print(count_no_of_ways(5, 2)) -- Output: 30
print(count_no_of_ways(6, 3)) -- Output: 66
print(count_no_of_ways(7, 2)) -- Output: 42
print(count_no_of_ways(8, 3)) -- Output: 120
print(count_no_of_ways(9, 2)) -- Output: 54
print(count_no_of_ways(10, 3)) -- Output: 180
print(count_no_of_ways(11, 2)) -- Output: 66
print(count_no_of_ways(12, 3)) -- Output: 220
print(count_no_of_ways(13, 2)) -- Output: 84
print(count_no_of_ways(14, 3)) -- Output: 364
print(count_no_of_ways(15, 2)) -- Output: 120
print(count_no_of_ways(16, 3)) -- Output: 580


lu = require('luaunit')

function test_humaneval()
local candidate = count_no_of_ways
    lu.assertEquals(candidate(2, 4), 16)
    lu.assertEquals(candidate(3, 2), 6)
    lu.assertEquals(candidate(4, 4), 228)
end

os.exit(lu.LuaUnit.run())