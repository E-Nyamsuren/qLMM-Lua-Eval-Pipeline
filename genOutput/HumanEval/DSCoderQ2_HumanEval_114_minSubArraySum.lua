-- Given a table of integers nums, find the minimum sum of any non-empty sub-table
-- of nums.
-- Example
-- >>> minSubArraySum({2, 3, 4, 1, 2, 4})
-- 1
-- >>> minSubArraySum({-1, -2, -3})
-- -6
local function minSubArraySum(nums)
    local dp = {}
    dp[0] = nums[1]
    local min_sum = dp[0]
    local min_start = 1
    local min_end = 1
    for i = 2, #nums do
        dp[i] = nums[i] + (dp[i - 1] > 0 and dp[i - 1] or 0)
        if dp[i] < min_sum then
            min_sum = dp[i]
            min_start = i
            min_end = i
        end
    end
    return min_sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = minSubArraySum
    lu.assertEquals(candidate({2, 3, 4, 1, 2, 4}), 1)
    lu.assertEquals(candidate({-1, -2, -3}), -6)
    lu.assertEquals(candidate({-1, -2, -3, 2, -10}), -14)
    lu.assertEquals(candidate({-9999999999999999}), -9999999999999999)
    lu.assertEquals(candidate({0, 10, 20, 1000000}), 0)
    lu.assertEquals(candidate({-1, -2, -3, 10, -5}), -6)
    lu.assertEquals(candidate({100, -1, -2, -3, 10, -5}), -6)
    lu.assertEquals(candidate({10, 11, 13, 8, 3, 4}), 3)
    lu.assertEquals(candidate({100, -33, 32, -1, 0, -2}), -33)
    lu.assertEquals(candidate({-10}), -10)
    lu.assertEquals(candidate({7}), 7)
    lu.assertEquals(candidate({1, -1}), -1)
end

os.exit(lu.LuaUnit.run())