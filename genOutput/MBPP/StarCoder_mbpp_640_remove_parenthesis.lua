-- Write a function to remove the parenthesis and what is inbetween them from a string.
local function remove_parenthesis(items)
	local result = {}
	for i, item in ipairs(items) do
		local start, finish = string.find(item, "%(")
		if start then
			result[#result+1] = string.sub(item, 1, start-1)
		else
			result[#result+1] = item
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