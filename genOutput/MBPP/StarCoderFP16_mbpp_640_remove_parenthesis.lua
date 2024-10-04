-- Write a function to remove the parenthesis and what is inbetween them from a string.
local function remove_parenthesis(items)
	local new_items = {}
	for i,v in ipairs(items) do
		if v:sub(1,1) == "(" and v:sub(-1,-1) == ")" then
			new_items[i] = v:sub(2,-2)
		else
			new_items[i] = v
		end
	end
	return new_items
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_parenthesis
    lu.assertEquals(candidate({'python (chrome)'}), 'python')
    lu.assertEquals(candidate({'string(.abc)'}), 'string')
    lu.assertEquals(candidate({'alpha(num)'}), 'alpha')
end

os.exit(lu.LuaUnit.run())