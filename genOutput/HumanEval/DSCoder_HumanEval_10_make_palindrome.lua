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
    local function is_palindrome(s)
        local len = #s
        for i = 1, len / 2 do
            if s:sub(i, i) ~= s:sub(len - i + 1, len - i + 1) then
                return false
            end
        end
        return true
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