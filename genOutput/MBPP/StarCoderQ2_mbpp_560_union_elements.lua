-- Write a function to find the union of the elements of two given tables and output them in sorted order.
local function union_elements(test_tup1, test_tup2)
	local result = {}
	local index = 1
	local index1 = 1
	local index2 = 1
	while index1 <= #test_tup1 and index2 <= #test_tup2 do
		if test_tup1[index1] < test_tup2[index2] then
			result[index] = test_tup1[index1]
			index1 = index1 + 1
		elseif test_tup1[index1] > test_tup2[index2] then
			result[index] = test_tup2[index2]
			index2 = index2 + 1
		else
			result[index] = test_tup1[index1]
			index1 = index1 + 1
			index2 = index2 + 1
		end
		index = index + 1
	end
	while index1 <= #test_tup1 do
		result[index] = test_tup1[index1]
		index = index + 1
		index1 = index1 + 1
	end
	while index2 <= #test_tup2 do
		result[index] = test_tup2[index2]
		index = index + 1
		index2 = index2 + 1
	end
	return result
end


lu = require('luaunit')

function test_humaneval()
local candidate = union_elements
    lu.assertEquals(candidate({3, 4, 5, 6}, {5, 7, 4, 10}), {3, 4, 5, 6, 7, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, {3, 4, 5, 6}), {1, 2, 3, 4, 5, 6})
    lu.assertEquals(candidate({11, 12, 13, 14}, {13, 15, 16, 17}), {11, 12, 13, 14, 15, 16, 17})
end

os.exit(lu.LuaUnit.run())