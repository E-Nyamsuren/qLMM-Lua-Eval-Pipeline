
--[[
Given a string consisting of lowercase English letters, in each round you
can change one of the characters to another character. The question is: what
is the minimum number of rounds needed to make the string composed of the 
same character?

Examples:
    -- minRoundsToSameChar("aab") should return 1
--]]
function minRoundsToSameChar(s) {
    let count = 0;
    let charCount = {};
    for (let i = 0; i < s.length; i++) {
        if (charCount[s[i]]) {
            charCount[s[i]]++;
        } else {
            charCount[s[i]] = 1;
        }
    }
    for (let key in charCount) {
        if (charCount[key] === 1) {
            return -1;
        }
        count += Math.ceil(charCount[key] / 3);
    }
    return count;
}
<|file_separator|>

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