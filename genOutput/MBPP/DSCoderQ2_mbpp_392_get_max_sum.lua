-- Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
local function get_max_sum(n)
    local dp = {0, 0, 0, 0, 0}
    dp[1] = n
    dp[2] = math.max(n/2, 0) + math.max(n/3, 0) + math(n/4, 0) + math.max(n/5, 0)
    for i = 3, n do
        dp[i % 3 + 1] = math.max(dp[i % 3 + 1], dp[i % 3] / 2 + dp[i % 3] / 3 + dp[i % 3] / 4 + dp[i % 3] / 5)
    end
    return dp[(n + 2) % 3 + 1]
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_max_sum
    lu.assertEquals(candidate(60), 106)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())