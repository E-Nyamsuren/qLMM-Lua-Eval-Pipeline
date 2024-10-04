-- Write a luathon function to count the number of rotations required to generate a sorted table. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-table/
local function count_rotation(arr)
	local n = #arr
	local i = 0
	local j = n - 1
	while i < j do
		if arr[i] <= arr[i + 1] then
			i = i + 1
		else
			local temp = arr[i]
			for k = i, j do
				arr[k] = arr[k + 1]
			end
			arr[j] = temp
			j = j - 1
		end
	end
	return i
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_rotation
    lu.assertEquals(candidate({3, 2, 1}), 1)
    lu.assertEquals(candidate({4, 5, 1, 2, 3}), 2)
    lu.assertEquals(candidate({7, 8, 9, 1, 2, 3}), 3)
    lu.assertEquals(candidate({1, 2, 3}), 0)
    lu.assertEquals(candidate({1, 3, 2}), 2)
end

os.exit(lu.LuaUnit.run())