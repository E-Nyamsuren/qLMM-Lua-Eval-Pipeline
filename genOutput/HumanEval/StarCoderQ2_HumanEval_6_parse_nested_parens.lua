-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- {2, 3, 1, 3}
local function parse_nested_parens(paren_string)
	local depth = 0
	local max_depth = 0
	local depth_stack = {}
	for char in paren_string:gmatch('.') do
		if char == '(' then
			depth = depth + 1
			depth_stack[#depth_stack+1] = depth
			max_depth = math.max(max_depth, depth)
		elseif char == ')' then
			depth = depth_stack[#depth_stack]
			depth_stack[#depth_stack] = nil
			depth_stack[#depth_stack+1] = depth
		end
	end
	return max_depth
end


lu = require('luaunit')

function test_humaneval()
local candidate = parse_nested_parens
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {2, 3, 1, 3})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {1, 2, 3, 4})
    lu.assertEquals(candidate('(()(())((())))'), {4})
end

os.exit(lu.LuaUnit.run())