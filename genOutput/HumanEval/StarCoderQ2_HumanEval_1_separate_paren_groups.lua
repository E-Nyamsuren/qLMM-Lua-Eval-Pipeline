-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
	local groups = {}
	local open_parens = 0
	local group = ''
	local is_group = false
	for char in paren_string:gmatch('.') do
		if char == '(' then
			open_parens = open_parens + 1
			group = group .. char
			is_group = true
		elseif char == ')' then
			open_parens = open_parens - 1
			group = group .. char
			is_group = true
			if open_parens == 0 then
				table.insert(groups, group)
				is_group = false
				group = ''
			end
		elseif is_group then
			group = group .. char
		end
	end
	return groups
end


lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())