-- Write a function to sort a table of elements.
local function pancake_sort(nums)
	local n = #nums
	local flips = 0
	while n > 0 do
		local max_index = 1
		for i = 1, n do
			if nums[i] > nums[max_index] then
				max_index = i
			end
		end
		if max_index ~= n then
			if max_index ~= 1 then
				nums = flip(nums, max_index)
				flips = flips + 1
			end
			nums = flip(nums, n)
			flips = flips + 1
		end
		n = n - 1
	end
	return flips
end

lu = require('luaunit')

function test_humaneval()
local candidate = pancake_sort
    lu.assertEquals(candidate({15, 79, 25, 38, 69}), {15, 25, 38, 69, 79})
    lu.assertEquals(candidate({98, 12, 54, 36, 85}), {12, 36, 54, 85, 98})
    lu.assertEquals(candidate({41, 42, 32, 12, 23}), {12, 23, 32, 41, 42})
end

os.exit(lu.LuaUnit.run())