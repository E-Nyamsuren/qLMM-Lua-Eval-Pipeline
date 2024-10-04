-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- {2, 3, 1, 3}
local function parse_nested_parens(paren_string)
	local paren_table = {}
	local paren_stack = {}
	local paren_level = 0
	local paren_max_level = 0
	for i = 1, #paren_string do
		local char = paren_string:sub(i, i)
		if char == '(' then
			table.insert(paren_stack, paren_level)
			paren_level = paren_level + 1
		elseif char == ')' then
			paren_level = paren_stack[#paren_stack]
			table.remove(paren_stack)
		end
		if paren_level > paren_max_level then
			paren_max_level = paren_level
		end
	end
	return paren_max_level
end

lu = require('luaunit')

function test_humaneval()
local candidate = parse_nested_parens
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {2, 3, 1, 3})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {1, 2, 3, 4})
    lu.assertEquals(candidate('(()(())((())))'), {4})
end

os.exit(lu.LuaUnit.run())