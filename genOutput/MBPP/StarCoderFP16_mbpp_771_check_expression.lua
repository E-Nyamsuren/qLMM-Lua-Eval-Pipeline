-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
	local stack = {}
	local open_brackets = {'{', '(', '['}
	local close_brackets = {'}', ')', ']'}
	local open_to_close = {['{'] = '}', ['('] = ')', ['['] = ']'}
	for i = 1, #exp do
		local char = string.sub(exp, i, i)
		if table.contains(open_brackets, char) then
			table.insert(stack, char)
		elseif table.contains(close_brackets, char) then
			local last_open = table.remove(stack)
			if last_open ~= open_to_close[char] then
				return false
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