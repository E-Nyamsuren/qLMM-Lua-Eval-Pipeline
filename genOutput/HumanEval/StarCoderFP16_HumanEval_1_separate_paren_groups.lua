-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
	local paren_table = {}
	local paren_group = {}
	local paren_group_index = 1
	local paren_group_start = 1
	local paren_group_end = 1
	local paren_group_length = 1
	local paren_group_count = 0
	local paren_group_count_start = 1
	local paren_group_count_end = 1
	local paren_group_count_length = 1
	local paren_group_count_count = 0
	local paren_group_count_count_start = 1
	local paren_group_count_count_end = 1
	local paren_group_count_count_length = 1
	local paren_group_count_count_count = 0
	local paren_group_count_count_count_start = 1
	local paren_group_count_count_count_end = 1
	local paren_group_count_count_count_length = 1
	local paren_group_count_count_count_count = 0
	local paren_group_count_count_count_count_start = 1
	local paren_group_count_count_count_count_end = 1
	local paren_group_count_count_count_count_length = 1
	local paren_group_count_count_count_count_count = 0
	local paren_group_count_count_count_count_count_start = 1
	local paren_group_count_count_count_count_count_end = 1
	local paren_group_count_

lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())