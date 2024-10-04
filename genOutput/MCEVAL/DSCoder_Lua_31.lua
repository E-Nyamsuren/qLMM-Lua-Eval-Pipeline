
--[[
Given a string consisting of lowercase English letters, in each round you
can change one of the characters to another character. The question is: what
is the minimum number of rounds needed to make the string composed of the 
same character?

Examples:
    -- minRoundsToSameChar("aab") should return 1
--]]
function minRoundsToSameChar(s)
    local count = {}
    for i = 1, #s do
        local c = s:sub(i, i)
        count[c] = (count[c] or 0) + 1
    end
    local rounds = 0
    for _, v in pairs(count) do
        if v == 1 then
            return -1
        end
        rounds = rounds + math.ceil(v / 3)
    end
    return rounds
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