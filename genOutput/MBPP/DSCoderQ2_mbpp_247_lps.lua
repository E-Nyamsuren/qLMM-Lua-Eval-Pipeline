-- Write a function to find the length of the longest palindromic subsequence in the given string.
local function lps(str)
    local n = #str
    local dp = {}
    for i = 0, n - 1 do
        dp[i] = {}
        dp[i][i] = 1
    end
    for l = 2, n do
        for i = 0, n - l do
            local j = i + l - 1
            if str:sub(i + 1, i + 1) == str:sub(j + 1, j + 1) then
                dp[i][j] = dp[i + 1][j - ] + 2
            else
                dp[i][j] = math.max(dp[i + 1][j], dp[i][j - 1])
            end
        end
    end
    return dp[0][n - 1]
end

lu = require('luaunit')

function test_humaneval()
local candidate = lps
    lu.assertEquals(candidate('TENS FOR TENS'), 5)
    lu.assertEquals(candidate('CARDIO FOR CARDS'), 7)
    lu.assertEquals(candidate('PART OF THE JOURNEY IS PART'), 9)
end

os.exit(lu.LuaUnit.run())