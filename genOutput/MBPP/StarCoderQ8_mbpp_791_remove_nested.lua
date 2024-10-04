-- Write a function to remove tables from the given table.
local function remove_nested(test_tup)
	local new_tup = {}
	for i, v in ipairs(test_tup) do
		if type(v) == "table" then
			new_tup[i] = remove_nested(v)
		else
			new_tup[i] = v
		end
	end
	return new_tup
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_nested
    lu.assertEquals(candidate({1, 5, 7, {4, 6}, 10}), {1, 5, 7, 10})
    lu.assertEquals(candidate({2, 6, 8, {5, 7}, 11}), {2, 6, 8, 11})
    lu.assertEquals(candidate({3, 7, 9, {6, 8}, 12}), {3, 7, 9, 12})
    lu.assertEquals(candidate({3, 7, 9, {6, 8}, {5, 12}, 12}), {3, 7, 9, 12})
end

os.exit(lu.LuaUnit.run())