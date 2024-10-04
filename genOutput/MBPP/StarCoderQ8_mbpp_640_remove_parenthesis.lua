-- Write a function to remove the parenthesis and what is inbetween them from a string.
local function remove_parenthesis(items)
	local result = {}
	for i, item in ipairs(items) do
		if item:sub(1, 1) == "(" and item:sub(-1) == ")" then
			table.insert(result, item:sub(2, -2))
		else
			table.insert(result, item)
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_parenthesis
    lu.assertEquals(candidate({'python (chrome)'}), 'python')
    lu.assertEquals(candidate({'string(.abc)'}), 'string')
    lu.assertEquals(candidate({'alpha(num)'}), 'alpha')
end

os.exit(lu.LuaUnit.run())