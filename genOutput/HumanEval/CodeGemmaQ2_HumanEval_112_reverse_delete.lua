-- Task
-- We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
-- then check if the result string is palindrome.
-- A string is called palindrome if it reads the same backward as forward.
-- You should return a table containing the result string and true/false for the check.
-- Example
-- >>> reverse_delete('abcde', 'ae')
-- {'bcd', false}
-- >>> reverse_delete('abcdef', 'b')
-- {'acdef', false}
-- >>> reverse_delete('abcdedcba', 'ab')
-- {'cdedc', true}
local function reverse_delete(s, c)
 vagu suspicam miniatur
 pessi pessi miniatur
 pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_delete
    lu.assertEquals(candidate('abcde', 'ae'), {'bcd', false})
    lu.assertEquals(candidate('abcdef', 'b'), {'acdef', false})
    lu.assertEquals(candidate('abcdedcba', 'ab'), {'cdedc', true})
    lu.assertEquals(candidate('dwik', 'w'), {'dik', false})
    lu.assertEquals(candidate('a', 'a'), {'', true})
    lu.assertEquals(candidate('abcdedcba', ''), {'abcdedcba', true})
    lu.assertEquals(candidate('abcdedcba', 'v'), {'abcdedcba', true})
    lu.assertEquals(candidate('vabba', 'v'), {'abba', true})
    lu.assertEquals(candidate('mamma', 'mia'), {'', true})
end

os.exit(lu.LuaUnit.run())