-- Write a function to sort a table of elements.
local function comb_sort(nums)
	local gap = #nums - 1
	local swapped = false
	while gap > 0 do
		gap = math.floor(gap / 1.3)
		for i = 1, gap + 1 do
			if nums[i] > nums[i + 1] then
				nums[i], nums[i + 1] = nums[i + 1], nums[i]
				swapped = true
			end
		end
		if not swapped then
			break
		end
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = comb_sort
    lu.assertEquals(candidate({5, 15, 37, 25, 79}), {5, 15, 25, 37, 79})
    lu.assertEquals(candidate({41, 32, 15, 19, 22}), {15, 19, 22, 32, 41})
    lu.assertEquals(candidate({99, 15, 13, 47}), {13, 15, 47, 99})
end

os.exit(lu.LuaUnit.run())