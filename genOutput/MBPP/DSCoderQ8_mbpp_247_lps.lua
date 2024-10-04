-- Write a function to find the length of the longest palindromic subsequence in the given string.
local function lps(str)
    local n = #str
    local L = {}
    for i = 0, n do
        L[i] = {}
        for j = 0, n do
            L[i][j] = 0
        end
    end

lu = require('luaunit')

function test_humaneval()
local candidate = lps
    lu.assertEquals(candidate('TENS FOR TENS'), 5)
    lu.assertEquals(candidate('CARDIO FOR CARDS'), 7)
    lu.assertEquals(candidate('PART OF THE JOURNEY IS PART'), 9)
end

os.exit(lu.LuaUnit.run())