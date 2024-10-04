-- Write a function to check whether a table contains the given subtable or not.
local function is_sublist(l, s)
	for i, v in ipairs(s) do
		if l[i] ~= v then return false end
	end
	return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_sublist
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {3, 7}), false)
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {4, 3}), true)
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {1, 6}), false)
end

os.exit(lu.LuaUnit.run())