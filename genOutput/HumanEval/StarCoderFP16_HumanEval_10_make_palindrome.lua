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
	local prefix = string:reverse()
	local palindrome = string .. prefix
	local palindrome_length = #palindrome
	local palindrome_prefix = 0
	local palindrome_suffix = 0
	local palindrome_prefix_length = 0
	local palindrome_suffix_length = 0
	local palindrome_prefix_start = 0
	local palindrome_suffix_start = 0
	local palindrome_prefix_end = 0
	local palindrome_suffix_end = 0
	local palindrome_prefix_found = false
	local palindrome_suffix_found = false
	local palindrome_prefix_found_start = 0
	local palindrome_suffix_found_start = 0
	local palindrome_prefix_found_end = 0
	local palindrome_suffix_found_end = 0
	local palindrome_prefix_found_length = 0
	local palindrome_suffix_found_length = 0
	local palindrome_prefix_found_length_max = 0
	local palindrome_suffix_found_length_max = 0
	local palindrome_prefix_found_length_max_start = 0
	local palindrome_suffix_found_length_max_start = 0
	local palindrome_prefix_found_length_max_end = 0
	local palindrome_suffix_found_length_max_end = 0
	local palindrome_prefix_found_length_max_length = 0
	local palindrome_suffix_found_length_max_length = 0
	local palindrome_prefix_found_length_max_length_start = 0
	local palindrome_suffix_found_

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