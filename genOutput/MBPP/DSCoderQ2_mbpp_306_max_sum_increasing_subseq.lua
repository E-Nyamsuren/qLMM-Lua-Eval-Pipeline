-- Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
local function max_sum_increasing_subseq(a, n, index, k)
    local dp = {}
    dp[0] = a[1]
    local max_sum = a[1]
    for i = 2, n do
        dp[i] = a[i]
        for j = 1, i - 1 do
            if a[j] < a[i] and dp[j] + a[i] > dp[i] then
                dp[i] = d[j] + a[i]
            end
        end
        max_sum = math.max(max_sum, dp[i])
    end
    return max_sum + a[k]
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum_increasing_subseq
    lu.assertEquals(candidate({1, 101, 2, 3, 100, 4, 5}, 7, 4, 6), 11)
    lu.assertEquals(candidate({1, 101, 2, 3, 100, 4, 5}, 7, 2, 5), 7)
    lu.assertEquals(candidate({11, 15, 19, 21, 26, 28, 31}, 7, 2, 4), 71)
end

os.exit(lu.LuaUnit.run())