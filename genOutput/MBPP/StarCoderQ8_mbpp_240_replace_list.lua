-- Write a function that takes in two tables and replaces the last element of the first table with the elements of the second table.
local function replace_list(list1, list2)
	local len1 = #list1
	local len2 = #list2
	if len1 < len2 then
		for i = 1, len2 - len1 do
			table.insert(list1, len1 + i, list2[i])
		end
	else
		for i = len1, len2, -1 do
			table.remove(list1, i)
		end
		for i = 1, len2 do
			list1[len1 - len2 + i] = list2[i]
		end
	end
	return list1
end

lu = require('luaunit')

function test_humaneval()
local candidate = replace_list
    lu.assertEquals(candidate({1, 3, 5, 7, 9, 10}, {2, 4, 6, 8}), {1, 3, 5, 7, 9, 2, 4, 6, 8})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {5, 6, 7, 8}), {1, 2, 3, 4, 5, 6, 7, 8})
    lu.assertEquals(candidate({'red', 'blue', 'green'}, {'yellow'}), {'red', 'blue', 'yellow'})
end

os.exit(lu.LuaUnit.run())