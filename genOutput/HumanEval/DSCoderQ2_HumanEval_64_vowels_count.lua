-- Write a function vowels_count which takes a string representing
-- a word as input and returns the number of vowels in the string.
-- Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
-- vowel, but only when it is at the end of the given word.
-- Example:
-- >>> vowels_count('abcde')
-- 2
-- >>> vowels_count('ACEDY')
-- 3
local function vowels_count(s)
    s = s:lower()
    local count = 0
    for i = 1, #s do
        local c = s:sub(i, i)
        if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' or (c == 'y' and i == #s) then
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = vowels_count
    lu.assertEquals(candidate('abcde'), 2)
    lu.assertEquals(candidate('Alone'), 3)
    lu.assertEquals(candidate('key'), 2)
    lu.assertEquals(candidate('bye'), 1)
    lu.assertEquals(candidate('keY'), 2)
    lu.assertEquals(candidate('bYe'), 1)
    lu.assertEquals(candidate('ACEDY'), 3)
end

os.exit(lu.LuaUnit.run())