-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
	local stack = {}
	local map = {
		['('] = ')',
		['{'] = '}',
		['['] = ']',
	}
	for i = 1, #exp do
		local char = exp:sub(i, i)
		if char == '(' or char == '{' or char == '[' then
			table.insert(stack, char)
		elseif char == ')' or char == '}' or char == ']' then
			if #stack == 0 or map[stack[#stack]] ~= char then
				return false
			else
				table.remove(stack)
			end
		end
	end
	return #stack == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_expression
    lu.assertEquals(candidate('{()}[{}]'), true)
    lu.assertEquals(candidate('{()}[{]'), false)
    lu.assertEquals(candidate('{()}[{}][]({})'), true)
end

os.exit(lu.LuaUnit.run())