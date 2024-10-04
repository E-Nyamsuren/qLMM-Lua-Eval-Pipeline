-- Write a luathon function to find the maximum difference between any two elements in a given table.
local function max_Abs_Diff(arr)
	local max_diff = 0
	local min = arr[1]
	local max = arr[1]
	for i = 2, #arr do
		if arr[i] - min > max_diff then
			max_diff = arr[i] - min
		end
		if arr[i] < min then
			min = arr[i]
		end
	end
	return max_diff
end


lu = require('luaunit')

function test_humaneval()
local candidate = max_Abs_Diff
    lu.assertEquals(candidate({2, 1, 5, 3}), 4)
    lu.assertEquals(candidate({9, 3, 2, 5, 1}), 8)
    lu.assertEquals(candidate({3, 2, 1}), 2)
end

os.exit(lu.LuaUnit.run())