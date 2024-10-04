-- Write a function that takes in a table and an integer L and splits the given table into two parts where the length of the first part of the table is L, and returns the resulting tables in a table.
local function split_two_parts(list1, L)
	local list2 = {}
	for i = L + 1, #list1 do
		list2[#list2 + 1] = list1[i]
	end
	return {list1, list2}
end

lu = require('luaunit')

function test_humaneval()
local candidate = split_two_parts
    lu.assertEquals(candidate({1, 1, 2, 3, 4, 4, 5, 1}, 3), {{1, 1, 2}, {3, 4, 4, 5, 1}})
    lu.assertEquals(candidate({'a', 'b', 'c', 'd'}, 2), {{'a', 'b'}, {'c', 'd'}})
    lu.assertEquals(candidate({'p', 'y', 't', 'h', 'o', 'n'}, 4), {{'p', 'y', 't', 'h'}, {'o', 'n'}})
end

os.exit(lu.LuaUnit.run())