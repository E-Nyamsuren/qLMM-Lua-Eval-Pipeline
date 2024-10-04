-- Write a function to find the number of ways to partition a set of Bell numbers.
local function bell_number(n)
    local dp = {}
    dp[0] = {1}
    for i = 1, n do
        dp[i] = {}
        dp[i][i-1] = dp[i-1][i-2]
        for j = 2, i do
            dp[i][i-j] = dp[i-1][i-j] + dp[i][i-j-1]
        end
    end
    return dp[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = bell_number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(10), 115975)
    lu.assertEquals(candidate(56), 6775685320645824322581483068371419745979053216268760300)
end

os.exit(lu.LuaUnit.run())