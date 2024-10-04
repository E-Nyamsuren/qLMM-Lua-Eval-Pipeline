
--[[
Given a string consisting of lowercase English letters, in each round you
can change one of the characters to another character. The question is: what
is the minimum number of rounds needed to make the string composed of the 
same character?

Examples:
    -- minRoundsToSameChar("aab") should return 1
--]]
function minRoundsToSameChar(s)
    local count = 0
    local prev = s:sub(1,1)
    local cnt = 1
    for i = 2, #s do
        local c = s:sub(i,i)
        if c == prev then
            cnt = cnt + 1
        else
            if cnt % 2 ~= 0 then
                count = count + 1
            end
            cnt = 1
        end
        prev = c
    end
    if cnt % 2 ~= 0 then
        count = count + 1
    end
    return count
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