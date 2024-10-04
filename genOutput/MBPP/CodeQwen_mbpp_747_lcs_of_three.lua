-- Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
local function lcs_of_three(X, Y, Z)
    local m = #X
    local n = #Y
    local p = #Z
    local L = {}
    for i = 0, m do
        L[i] = {}
        for j = 0, n do
            L[i][j] = {}
            for k = 0, p do
                if i == 0 or j == 0 or k == 0 then
                    L[i][j][k] = 0
                elseif X:sub(i, i) == Y:sub(j, j) and Y:sub(j, j) == Z:sub(k, k) then
                    L[i][j][k] = L[i-1][j-1][k-1] + 1
                else
                    L[i][j][k] = math.max(math.max(L[i-1][j][k], L[i][j-1][k]), L[i][j][k-1])
                end
            end
        end
    end
    return L[m][n][p]
end
print(lcs_of_three("AGGTAB", "GXTXAYB", "GTABXAYB")) -- Output: 4
print(lcs_of_three("ABC", "AC", "AC")) -- Output: 2
print(lcs_of_three("AXYT", "AYZX", "AYZX")) -- Output: 3
print(lcs_of_three("ABCDEFG", "BCDGK", "AEDFHR")) -- Output: 3
print(lcs_of_three("ABC", "ABC", "ABC")) -- Output: 3
print(lcs_of_three("ABC", "DEF", "GHI")) -- Output: 0
print(lcs_of_three("ABC", "ABC", "DEF")) -- Output: 1
print(lcs_of_three

lu = require('luaunit')

function test_humaneval()
local candidate = lcs_of_three
    lu.assertEquals(candidate('AGGT12', '12TXAYB', '12XBA'), 2)
    lu.assertEquals(candidate('Reels', 'Reelsfor', 'ReelsforReels'), 5)
    lu.assertEquals(candidate('abcd1e2', 'bc12ea', 'bd1ea'), 3)
end

os.exit(lu.LuaUnit.run())