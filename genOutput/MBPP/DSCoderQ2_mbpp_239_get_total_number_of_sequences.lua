-- Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
local function get_total_number_of_sequences(m, n)
    local dp = {}
    for i = 0, m do
        dp[i] = 1
    end
    for i = 2, n do
        local next_dp = {}
        next_dp[0] = dp[1]
        for j = 1, m do
            next_dp[j] = dp[j] + next_dp[j-1]
        end
        dp = next_dp
    end
    return dp[m]
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_total_number_of_sequences
    lu.assertEquals(candidate(10, 4), 4)
    lu.assertEquals(candidate(5, 2), 6)
    lu.assertEquals(candidate(16, 3), 84)
end

os.exit(lu.LuaUnit.run())