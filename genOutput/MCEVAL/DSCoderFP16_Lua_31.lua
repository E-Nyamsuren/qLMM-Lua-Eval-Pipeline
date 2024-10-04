
--[[
Given a string consisting of lowercase English letters, in each round you
can change one of the characters to another character. The question is: what
is the minimum number of rounds needed to make the string composed of the 
same character?

Examples:
    -- minRoundsToSameChar("aab") should return 1
--]]
function minRoundsToSameChar(s)
    local counts = {}
    for i = 1, #s do
        local c = s:sub(i,i)
        counts[c] = (counts[c] or 0) + 1
    end
    local minRounds = 0
    for _, count in pairs(counts) do
        minRounds = math.max(minRounds, math.floor(count / 2) + (count % 2))
    end
    return minRounds
end

lu = require('luaunit')

function testMinRoundsToSameChar()
    local candidate = minRoundsToSameChar
    lu.assertTrue(candidate("aab") == 1)
    lu.assertTrue(candidate("abc") == 2)
    lu.assertTrue(candidate("aaa") == 0)
    lu.assertTrue(candidate("abab") == 1)
    lu.assertTrue(candidate("zzzzz") == 0)
end

os.exit(lu.LuaUnit.run())