-- Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
local function max_sum_increasing_subseq(a, n, index, k)
    local dp = {}
    for i = 0, n-1 do
        dp[i] = a[i]
    end
    local max_sum = a[index]
    for i = index+1, n-1 do
        for j = index, i-1 do
            if a[i] > a[j] then
                dp[i] = math.max(dp[i], dp[j] + a[i])
                max_sum = math.max(max_sum, dp[i])
            end
        end
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