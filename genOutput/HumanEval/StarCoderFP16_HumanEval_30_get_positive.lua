-- Return only positive numbers in the table.
-- >>> get_positive({-1, 2, -4, 5, 6})
-- {2, 5, 6}
-- >>> get_positive({5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10})
-- {5, 3, 2, 3, 9, 123, 1}
local function get_positive(l)
	local result = {}
	for i = 1, #l do
		if l[i] > 0 then
			table.insert(result, l[i])
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_positive
    lu.assertEquals(candidate({-1, -2, 4, 5, 6}), {4, 5, 6})
    lu.assertEquals(candidate({5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}), {5, 3, 2, 3, 3, 9, 123, 1})
    lu.assertEquals(candidate({-1, -2}), {})
    lu.assertEquals(candidate({}), {})
end

os.exit(lu.LuaUnit.run())