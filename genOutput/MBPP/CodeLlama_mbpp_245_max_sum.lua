-- Write a function that takes a table and finds the maximum sum of a bitonic subsequence for the given table, where a sequence is bitonic if it is first increasing and then decreasing.
local function max_sum(arr)
    local n = #arr
    local dp = {}
    for i = 1, n do
        dp[i] = {arr[i], 1}
    end
    for i = 2, n do
        for j = 1, i - 1 do
            if arr[i] > arr[j] then
                local m = math.max(dp[j][1], dp[i][1])
                local s = math.max(dp[j][2], dp[i][2])
                dp[i] = {m, s + 1}
            end
        end
    end
    return dp[n][1]
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum
    lu.assertEquals(candidate({1, 15, 51, 45, 33, 100, 12, 18, 9}), 194)
    lu.assertEquals(candidate({80, 60, 30, 40, 20, 10}), 210)
    lu.assertEquals(candidate({2, 3, 14, 16, 21, 23, 29, 30}), 138)
end

os.exit(lu.LuaUnit.run())