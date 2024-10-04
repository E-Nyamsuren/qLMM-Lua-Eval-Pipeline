-- Write a function to pack consecutive duplicates of a given table elements into subtables.
local function pack_consecutive_duplicates(list1)
	local result = {}
	local current_subtable = {}
	local current_value = list1[1]
	for i = 2, #list1 do
		if list1[i] == current_value then
			table.insert(current_subtable, list1[i])
		else
			table.insert(result, current_subtable)
			current_subtable = {list1[i]}
			current_value = list1[i]
		end
	end
	table.insert(result, current_subtable)
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = pack_consecutive_duplicates
    lu.assertEquals(candidate({0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4}), {{0, 0}, {1}, {2}, {3}, {4, 4}, {5}, {6, 6, 6}, {7}, {8}, {9}, {4, 4}})
    lu.assertEquals(candidate({10, 10, 15, 19, 18, 18, 17, 26, 26, 17, 18, 10}), {{10, 10}, {15}, {19}, {18, 18}, {17}, {26, 26}, {17}, {18}, {10}})
    lu.assertEquals(candidate({'a', 'a', 'b', 'c', 'd', 'd'}), {{'a', 'a'}, {'b'}, {'c'}, {'d', 'd'}})
end

os.exit(lu.LuaUnit.run())