-- Write a function to sort a table of elements.
local function pancake_sort(nums)
	local n = #nums
	local function flip(i, j)
		for k = i, j do
			nums[k], nums[j - k + i] = nums[j - k + i], nums[k]
		end
	end
	local function find_max(i, j)
		local m = i
		for k = i, j do
			if nums[k] > nums[m] then
				m = k
			end
		end
		return m
	end
	for i = n, 2, -1 do
		local m = find_max(1, i)
		if m ~= i then
			flip(1, m)
			flip(1, i)
		end
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = pancake_sort
    lu.assertEquals(candidate({15, 79, 25, 38, 69}), {15, 25, 38, 69, 79})
    lu.assertEquals(candidate({98, 12, 54, 36, 85}), {12, 36, 54, 85, 98})
    lu.assertEquals(candidate({41, 42, 32, 12, 23}), {12, 23, 32, 41, 42})
end

os.exit(lu.LuaUnit.run())