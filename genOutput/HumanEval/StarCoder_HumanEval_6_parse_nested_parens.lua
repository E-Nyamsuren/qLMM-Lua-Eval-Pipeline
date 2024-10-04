-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- {2, 3, 1, 3}
local function parse_nested_parens(paren_string)
	local max_nesting = {}
	local current_nesting = 0
	for i = 1, #paren_string do
		local char = paren_string:sub(i, i)
		if char == '(' then
			current_nesting = current_nesting + 1
		elseif char == ')' then
			current_nesting = current_nesting - 1
		end
		if current_nesting > max_nesting[#max_nesting] then
			max_nesting[#max_nesting + 1] = current_nesting
		end
	end
	return max_nesting
end


lu = require('luaunit')

function test_humaneval()
local candidate = parse_nested_parens
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {2, 3, 1, 3})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {1, 2, 3, 4})
    lu.assertEquals(candidate('(()(())((())))'), {4})
end

os.exit(lu.LuaUnit.run())