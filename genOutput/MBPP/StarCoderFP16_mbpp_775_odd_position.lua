-- Write a luathon function to check whether every odd index contains odd numbers of a given table.
local function odd_position(nums)
	local odd_count = 0
	for i = 1, #nums, 2 do
		if nums[i] % 2 == 1 then
			odd_count = odd_count + 1
		end
	end
	return odd_count == #nums / 2
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_position
    lu.assertEquals(candidate({2, 1, 4, 3, 6, 7, 6, 3}), true)
    lu.assertEquals(candidate({4, 1, 2}), true)
    lu.assertEquals(candidate({1, 2, 3}), false)
end

os.exit(lu.LuaUnit.run())