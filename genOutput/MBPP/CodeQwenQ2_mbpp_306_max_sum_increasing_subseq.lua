-- Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
local function max_sum_increasing_subseq(a, n, index, k)
    local dp = {}
    for i = 1, n do
        dp[i] = {}
        for j = 1, n do
            dp[i][j] = 0
        end
    end
    for i = 1, n do
        dp[i][i] = a[i]
    end
    for i = 2, n do
        for j = 1, i do
            if a[i] > a[j] then
                dp[i][i] = math.max(dp[i][i], dp[j][j] + a[i])
            end
        end
    end
    for i = n, 1, -1 do
        for j = 1, n do
            if a[i] > a[j] and j > i then
                dp[i][i] = math.max(dp[i][i], dp[j][j] + a[i])
            end
        end
    end
    return dp[index][k]
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum_increasing_subseq
    lu.assertEquals(candidate({1, 101, 2, 3, 100, 4, 5}, 7, 4, 6), 11)
    lu.assertEquals(candidate({1, 101, 2, 3, 100, 4, 5}, 7, 2, 5), 7)
    lu.assertEquals(candidate({11, 15, 19, 21, 26, 28, 31}, 7, 2, 4), 71)
end

os.exit(lu.LuaUnit.run())