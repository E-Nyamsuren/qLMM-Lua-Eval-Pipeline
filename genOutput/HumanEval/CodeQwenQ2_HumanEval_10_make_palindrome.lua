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
    local function reverse(s)
        return s:sub(1, -2):reverse()
    end
    local function palindrome_postfix(s)
        for i = #s, 1, -1 do
            if s:sub(i) == s:sub(1, i) then
                return s:sub(i + 1)
            end
        end
        return s
    end
    local postfix = palindrome_postfix(string)
    return string .. reverse(string:sub(1, #string - #postfix))
end
print(make_palindrome(''))
print(make_palindrome('cat'))
print(make_palindrome('cata'))
print(make_palindrome('race'))
print(make_palindrome('level'))
print(make_palindrome('palindrome'))
print(make_palindrome('abcdefgh'))
print(make_palindrome('abcdefg'))
print(make_palindrome('abcdef'))
print(make_palindrome('abcde'))
print(make_palindrome('abcd'))
print(make_palindrome('abc'))
print(make_palindrome('ab'))
print(make_palindrome('a'))
print(make_palindrome(''))
print(make_palindrome(''))
print(make_palindrome(''))
print(make_palindrome(''))
print(make_palindrome(''))
print(make_palindrome(''))
print(make_palindrome(''))
print(make_palindrome(''))
print(make_palindrome

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