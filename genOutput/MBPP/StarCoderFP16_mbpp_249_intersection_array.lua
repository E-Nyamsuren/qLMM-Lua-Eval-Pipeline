-- Write a function to find the intersection of two tables.
local function intersection_array(array_nums1, array_nums2)
	local result = {}
	for i = 1, #array_nums1 do
		for j = 1, #array_nums2 do
			if array_nums1[i] == array_nums2[j] then
				result[#result + 1] = array_nums1[i]
			end
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = intersection_array
    lu.assertEquals(candidate({1, 2, 3, 5, 7, 8, 9, 10}, {1, 2, 4, 8, 9}), {1, 2, 8, 9})
    lu.assertEquals(candidate({1, 2, 3, 5, 7, 8, 9, 10}, {3, 5, 7, 9}), {3, 5, 7, 9})
    lu.assertEquals(candidate({1, 2, 3, 5, 7, 8, 9, 10}, {10, 20, 30, 40}), {10})
end

os.exit(lu.LuaUnit.run())