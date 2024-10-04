-- Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that table.
local function max_product(arr)
    local n = #arr
    local dp = {}
    local max = 0
    for i = 1, n do
        dp[i] = {arr[i], 1}
        max = math.max(max, arr[i])
    end
    for i = 2, n do
        for j = 1, i - 1 do
            if arr[i] > arr[j] then
                dp[i] = math.max(dp[i], dp[j] + arr[i])
            end
        end
    end
    return max
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_product
    lu.assertEquals(candidate({3, 100, 4, 5, 150, 6}), 3000)
    lu.assertEquals(candidate({4, 42, 55, 68, 80}), 50265600)
    lu.assertEquals(candidate({10, 22, 9, 33, 21, 50, 41, 60}), 2460)
end

os.exit(lu.LuaUnit.run())