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
    for i = len, 1, -1 do
        if string:sub(i, len) == string:sub(i, len):reverse() then
            return string .. string:sub(1, i - 1):reverse()
        end
    end
    return string
end
print(make_palindrome('')) -- ''
print(make_palindrome('cat')) -- 'catac'
print(make_palindrome('cata')) -- 'catac'
print(make_palindrome('race')) -- 'racecar'
print(make_palindrome('level')) -- 'level'
print(make_palindrome('noon')) -- 'noon'
print(make_palindrome('red')) -- 'redder'
print(make_palindrome('green')) -- 'greenneerg'
print(make_palindrome('yellow')) -- 'yellowoyellow'
print(make_palindrome('blue')) -- 'blueuble'
print(make_palindrome('purple')) -- 'purplepurple'
print(make_palindrome('black')) -- 'blackcab'
print(make_palindrome('white')) -- 'whiteetiw'
print(make_palindrome('gray')) -- 'grayyag'
print(make_palindrome('pink')) -- 'pinknik'
print(make_palindrome('orange')) -- 'orangegenaro'
print(make_palindrome('brown')) -- 'brownnorob'
print(make_palindrome('green')) -- 'greenneerg'
print(make_palind

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