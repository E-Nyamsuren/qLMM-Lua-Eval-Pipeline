-- Write a luathon function to remove duplicate numbers from a given number of tables.
local function two_unique_nums(nums)
	local result = {}
	for i = 1, #nums do
		for j = 1, #nums do
			if i ~= j then
				if nums[i] == nums[j] then
					result[#result + 1] = nums[i]
				end
			end
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = two_unique_nums
    lu.assertEquals(candidate({1, 2, 3, 2, 3, 4, 5}), {1, 4, 5})
    lu.assertEquals(candidate({1, 2, 3, 2, 4, 5}), {1, 3, 4, 5})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), {1, 2, 3, 4, 5})
end

os.exit(lu.LuaUnit.run())