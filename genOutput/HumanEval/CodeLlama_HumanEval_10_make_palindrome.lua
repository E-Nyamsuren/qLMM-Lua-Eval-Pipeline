-- Find the shortest palindrome that begins with a supplied string.
-- Algorithm idea is simple:
-- - Find the longest postfix of supplied string that is a palindrome.
-- - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
-- >>> make_palindrome('')
-- ''
-- >>> make_palindrome('cat')
-- 'catac'
-- >>> make_palindrome('cata')
-- 'catac'
local function make_palindrome(string)
    local len = #string
    if len == 0 then
        return ''
    end
    local i = 1
    while i <= len and string:sub(i, i) == string:sub(len - i + 1, len - i + 1) do
        i = i + 1
    end
    return string:sub(1, len - i + 1) .. string:sub(len - i + 2, len):reverse()
end

lu = require('luaunit')

function test_humaneval()
local candidate = make_palindrome
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('x'), 'x')
    lu.assertEquals(candidate('xyz'), 'xyzyx')
    lu.assertEquals(candidate('xyx'), 'xyx')
    lu.assertEquals(candidate('jerry'), 'jerryrrej')
end

os.exit(lu.LuaUnit.run())