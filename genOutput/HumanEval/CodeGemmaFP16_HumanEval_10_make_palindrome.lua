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
  local palindrome = string
  local palindrome_len = #palindrome
  local palindrome_prefix = palindrome:sub(1, palindrome_len / 2)
  local palindrome_suffix = palindrome:sub(palindrome_len / 2 + 1)
  local palindrome_suffix_reversed = palindrome_suffix:reverse()
  local palindrome_suffix_reversed_len = #palindrome_suffix_reversed
  local palindrome_suffix_reversed_prefix = palindrome_suffix_reversed:sub(1, palindrome_suffix_reversed_len / 2)
  local palindrome_suffix_reversed_suffix = palindrome_suffix_reversed:sub(palindrome_suffix_reversed_len / 2 + 1)
  local palindrome_suffix_reversed_suffix_reversed = palindrome_suffix_reversed_suffix:reverse()
  local palindrome_suffix_reversed_suffix_reversed_len = #palindrome_suffix_reversed_suffix_reversed
  local palindrome_suffix_reversed_suffix_reversed_prefix = palindrome_suffix_reversed_suffix_reversed:sub(1, palindrome_suffix_reversed_suffix_reversed_len / 2)
  local palindrome_suffix_reversed_suffix_reversed_suffix = palindrome_suffix_reversed_suffix_reversed:sub(palindrome_suffix_reversed_suffix_reversed_len / 2 + 1)
  local palindrome_suffix_reversed_suffix_reversed_suffix_reversed = palindrome_suffix_reversed_suffix_reversed:reverse()
  local palindrome_suffix_reversed_suffix_reversed_suffix_reversed_len = #palindrome_suffix_reversed_suffix_reversed_suffix_reversed
  local palindrome_suffix_reversed_suffix_reversed_suffix_reversed_prefix = palindrome_suffix_reversed_suffix_reversed_suffix_reversed:sub(1, palindrome_suffix_reversed_suffix_reversed_suffix_reversed_len

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