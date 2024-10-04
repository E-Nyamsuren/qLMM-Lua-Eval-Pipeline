-- Write a luathon function to count the occurence of all elements of table in a table.
local function count_Occurrence(tup, lst)
	local count = {}
	for i, v in ipairs(lst) do
		count[v] = (count[v] or 0) + 1
	end
	return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_Occurrence
    lu.assertEquals(candidate({'a', 'a', 'c', 'b', 'd'}, {'a', 'b'}), 3)
    lu.assertEquals(candidate({1, 2, 3, 1, 4, 6, 7, 1, 4}, {1, 4, 7}), 6)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {1, 2}), 2)
end

os.exit(lu.LuaUnit.run())