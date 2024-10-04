-- Write a function that takes a table and finds the maximum sum of a bitonic subsequence for the given table, where a sequence is bitonic if it is first increasing and then decreasing.
local function max_sum(arr)
    local n = #arr
    local dp = {}
    for i = 1, n do
        dp[i] = {}
        for j = 1, n do
            dp[i][j] = 0
        end
    end
    for i = 1, n do
        dp[i][i] = arr[i]
    end
    for i = 2, n do
        for j = 1, n - i + 1 do
            local k = j + i - 1
            dp[j][k] = math.max(dp[j][k - 1], dp[j + 1][k]) + arr[k]
        end
    end
    return dp[1][n]
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum
    lu.assertEquals(candidate({1, 15, 51, 45, 33, 100, 12, 18, 9}), 194)
    lu.assertEquals(candidate({80, 60, 30, 40, 20, 10}), 210)
    lu.assertEquals(candidate({2, 3, 14, 16, 21, 23, 29, 30}), 138)
end

os.exit(lu.LuaUnit.run())