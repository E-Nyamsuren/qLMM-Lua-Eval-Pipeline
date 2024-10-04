-- Write a function that takes a table and finds the maximum sum of a bitonic subsequence for the given table, where a sequence is bitonic if it is first increasing and then decreasing.
local function max_sum(arr)
    local n = #arr
    if n == 1 then
        return arr[1]
    end
    local dp = {}
    for i = 1, n do
        dp[i] = {arr[i], 1}
    end
    for i = 2, n do
        for j = 1, i - 1 do
            if arr[i] > arr[j] then
                local m = dp[j][1]
                local c = dp[j][2]
                if m < arr[i] then
                    dp[i] = {arr[i], c + 1}
                else
                    dp[i] = {m, c}
                end
            end
        end
    end
    local max = 0
    for i = 1, n do
        if dp[i][2] > max then
            max = dp[i][2]
        end
    end
    return max
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum
    lu.assertEquals(candidate({1, 15, 51, 45, 33, 100, 12, 18, 9}), 194)
    lu.assertEquals(candidate({80, 60, 30, 40, 20, 10}), 210)
    lu.assertEquals(candidate({2, 3, 14, 16, 21, 23, 29, 30}), 138)
end

os.exit(lu.LuaUnit.run())