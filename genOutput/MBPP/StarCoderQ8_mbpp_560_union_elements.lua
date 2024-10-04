-- Write a function to find the union of the elements of two given tables and output them in sorted order.
local function union_elements(test_tup1, test_tup2)
	local union_table = {}
	for i = 1, #test_tup1 do
		union_table[#union_table + 1] = test_tup1[i]
	end
	for i = 1, #test_tup2 do
		local found = false
		for j = 1, #union_table do
			if union_table[j] == test_tup2[i] then
				found = true
				break
			end
		end
		if not found then
			union_table[#union_table + 1] = test_tup2[i]
		end
	end
	table.sort(union_table)
	return union_table
end

lu = require('luaunit')

function test_humaneval()
local candidate = union_elements
    lu.assertEquals(candidate({3, 4, 5, 6}, {5, 7, 4, 10}), {3, 4, 5, 6, 7, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, {3, 4, 5, 6}), {1, 2, 3, 4, 5, 6})
    lu.assertEquals(candidate({11, 12, 13, 14}, {13, 15, 16, 17}), {11, 12, 13, 14, 15, 16, 17})
end

os.exit(lu.LuaUnit.run())