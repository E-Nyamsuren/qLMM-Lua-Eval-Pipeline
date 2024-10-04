
--[[
Determine if a given string is a palindrome. A palindrome is a word, phrase, number, or other 
sequence of characters that reads the same forward and backward (ignoring spaces, 
punctuation, and capitalization).
    >>> isPalindrome("racecar") -- true
]]--
function isPalindrome(str)
    local reversed = str:reverse()
    return str == reversed
end

lu = require('luaunit')

function testIsPalindrome()
    local candidate = isPalindrome
    lu.assertTrue(candidate("A man a plan a canal Panama") == true)
    lu.assertTrue(candidate("No lemon, no melon") == true)
    lu.assertTrue(candidate("Was it a car or a cat I saw") == true)
    lu.assertTrue(candidate("Madam, in Eden, I'm Adam") == true)
    lu.assertTrue(candidate("Never odd or even") == true)
    lu.assertTrue(candidate("Eva, can I see bees in a cave") == true)
    lu.assertTrue(candidate("hello") == false)
    lu.assertTrue(candidate("GitHub") == false)
    lu.assertTrue(candidate("programming") == false)
end

os.exit(lu.LuaUnit.run())