-- Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
local function count_no_of_ways(n, k)
    local dp = {}
    for i = 1, n do
        dp[i] = {}
        for j = 1, k do
            if i == 1 then
                dp[i][j] = k
            elseif i == 2 then
                dp[i][j] = k * k
            else
                dp[i][j] = dp[i - 1][j] + dp[i - 2][j] - dp[i - 3][j]
                if j > 1 then
                    dp[i][j] = dp[i][j] + dp[i - 1][j - 1]
                end
            end
        end
    end
    return dp[n][k]
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_no_of_ways
    lu.assertEquals(candidate(2, 4), 16)
    lu.assertEquals(candidate(3, 2), 6)
    lu.assertEquals(candidate(4, 4), 228)
end

os.exit(lu.LuaUnit.run())