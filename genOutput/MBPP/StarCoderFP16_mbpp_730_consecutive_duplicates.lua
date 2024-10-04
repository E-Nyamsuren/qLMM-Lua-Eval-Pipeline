-- Write a function to remove consecutive duplicates of a given table.
local function consecutive_duplicates(nums)
	local i = 1
	while i < #nums do
		if nums[i] == nums[i + 1] then
			table.remove(nums, i)
		else
			i = i + 1
		end
	end
	return nums
end

lu = require('luaunit')

function test_humaneval()
local candidate = consecutive_duplicates
    lu.assertEquals(candidate({0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4}), {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 4})
    lu.assertEquals(candidate({10, 10, 15, 19, 18, 18, 17, 26, 26, 17, 18, 10}), {10, 15, 19, 18, 17, 26, 17, 18, 10})
    lu.assertEquals(candidate({'a', 'a', 'b', 'c', 'd', 'd'}), {'a', 'b', 'c', 'd'})
    lu.assertEquals(candidate({'a', 'a', 'b', 'c', 'd', 'd', 'a', 'a'}), {'a', 'b', 'c', 'd', 'a'})
end

os.exit(lu.LuaUnit.run())