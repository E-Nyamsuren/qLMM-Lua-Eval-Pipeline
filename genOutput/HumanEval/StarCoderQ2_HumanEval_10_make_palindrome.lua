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
	local length = string:len()
	local palindrome = string
	local palindrome_length = length
	local palindrome_index = 0
	local palindrome_start = 0
	local palindrome_end = length
	local palindrome_middle = length
	local palindrome_middle_index = length
	local palindrome_middle_length = 0
	local palindrome_middle_start = length
	local palindrome_middle_end = length
	local palindrome_middle_length = 0
	local palindrome_middle_index = length
	local palindrome_middle_length = 0
	local palindrome_middle_start = length
	local palindrome_middle_end = length
	local palindrome_middle_length = 0
	local palindrome_middle_index = length
	local palindrome_middle_length = 0
	local palindrome_middle_start = length
	local palindrome_middle_end = length
	local palindrome_middle_length = 0
	local palindrome_middle_index = length
	local palindrome_middle_length = 0
	local palindrome_middle_start = length
	local palindrome_middle_end = length
	local palindrome_middle_length = 0
	local palindrome_middle_index = length
	local palindrome_middle_length = 0
	local palindrome_middle_start = length
	local palindrome_middle_end = length
	local palindrome_middle_length = 0
	local palindrome_middle_index = length
	local palindrome_middle_length = 0
	local palindrome_middle_start = length
	local palindrome_middle

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