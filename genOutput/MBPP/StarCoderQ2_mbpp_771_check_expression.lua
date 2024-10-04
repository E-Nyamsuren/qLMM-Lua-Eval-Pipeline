-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
	local stack = {}
	local exp_size = string.len(exp)
	local i = 1
	while i <= exp_size do
		local char = string.sub(exp, i, i)
		if char == '(' then
			table.insert(stack, char)
		elseif char == ')' then
			if #stack == 0 then
				return false
			end
			table.remove(stack)
		end
		i = i + 1
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