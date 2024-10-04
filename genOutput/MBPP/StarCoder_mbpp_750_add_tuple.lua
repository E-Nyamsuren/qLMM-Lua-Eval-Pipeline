-- Write a function to add the given table to the given table.
local function add_tuple(test_list, test_tup)
	table.insert(test_list, test_tup)
	return test_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = add_tuple
    lu.assertEquals(candidate({5, 6, 7}, {9, 10}), {5, 6, 7, 9, 10})
    lu.assertEquals(candidate({6, 7, 8}, {10, 11}), {6, 7, 8, 10, 11})
    lu.assertEquals(candidate({7, 8, 9}, {11, 12}), {7, 8, 9, 11, 12})
end

os.exit(lu.LuaUnit.run())