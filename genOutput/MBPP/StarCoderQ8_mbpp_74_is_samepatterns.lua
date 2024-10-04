-- Write a function to check whether it follows the sequence given in the patterns table.
local function is_samepatterns(colors, patterns)
	local color_count = {}
	for _, color in ipairs(colors) do
		color_count[color] = (color_count[color] or 0) + 1
	end
	for _, pattern in ipairs(patterns) do
		local count = 0
		for _, color in ipairs(pattern) do
			count = count + (color_count[color] or 0)
		end
		if count ~= #pattern then
			return false
		end
	end
	return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_samepatterns
    lu.assertEquals(candidate({'red', 'green', 'green'}, {'a', 'b', 'b'}), true)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b', 'b'}), false)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b'}), false)
end

os.exit(lu.LuaUnit.run())