-- Write a function to find the length of the longest palindromic subsequence in the given string.
local function lps(str)
    local n = #str
    local dp = {}
    for i = 1, n do
        dp[i] = {}
        for j = 1, n do
            dp[i][j] = 0
        end
    end
    for i = 1, n do
        dp[i][i] = 1
    end
    for i = 2, n do
        for j = 1, n - i + 1 do
            local k = j + i - 1
            if str:sub(j, j) == str:sub(k, k) then
                dp[j][k] = dp[j + 1][k - 1] + 2
            else
                dp[j][k] = math.max(dp[j][k - 1], dp[j + 1][k])
            end
        end
    end
    return dp[1][n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = lps
    lu.assertEquals(candidate('TENS FOR TENS'), 5)
    lu.assertEquals(candidate('CARDIO FOR CARDS'), 7)
    lu.assertEquals(candidate('PART OF THE JOURNEY IS PART'), 9)
end

os.exit(lu.LuaUnit.run())