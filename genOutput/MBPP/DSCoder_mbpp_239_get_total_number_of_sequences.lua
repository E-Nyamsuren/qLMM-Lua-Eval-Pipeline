-- Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
local function get_total_number_of_sequences(m, n)
    local dp = {}
    for i = 0, m do
        dp[i] = 1
    end
    for i = 2, n do
        local new_dp = {}
        for j = 1, m do
            new_dp[j] = 0
            for k = 1, j - 1 do
                new_dp[j] = (new_dp[j] + dp[k]) % MOD
            end
        end
        dp = new_dp
    end
    local total = 0
    for i = 1, m do
        total = (total + dp[i]) % MOD
    end
    return total
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_total_number_of_sequences
    lu.assertEquals(candidate(10, 4), 4)
    lu.assertEquals(candidate(5, 2), 6)
    lu.assertEquals(candidate(16, 3), 84)
end

os.exit(lu.LuaUnit.run())