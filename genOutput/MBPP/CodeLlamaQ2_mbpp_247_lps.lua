-- Write a function to find the length of the longest palindromic subsequence in the given string.
local function lps(str)
    local len = #str
    local dp = {}
    for i = 1, len do
        dp[i] = {[i] = 1}
    end
    for i = 1, len do
        for j = i + 1, len do
            if str:sub(i, i) == str:sub(j, j) then
                if i == j or dp[i][j - 1] == 1 then
                    dp[i][j] = dp[i - 1][j - 1] + 2
                else
                    dp[i][j] = math.max(dp[i - 1][j], dp[i][j - 1])
                end
            else
                dp[i][j] = math.max(dp[i - 1][j], dp[i][j - 1])
            end
        end
    end
    return dp[len][len]
end

lu = require('luaunit')

function test_humaneval()
local candidate = lps
    lu.assertEquals(candidate('TENS FOR TENS'), 5)
    lu.assertEquals(candidate('CARDIO FOR CARDS'), 7)
    lu.assertEquals(candidate('PART OF THE JOURNEY IS PART'), 9)
end

os.exit(lu.LuaUnit.run())