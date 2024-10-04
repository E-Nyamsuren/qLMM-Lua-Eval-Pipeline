-- Write a luathon function to find the first odd number in a given table of numbers.
local function first_odd(nums)
	for i, num in ipairs(nums) do
		if num % 2 ~= 0 then
			return num
		end
	end
	return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = first_odd
    lu.assertEquals(candidate({1, 3, 5}), 1)
    lu.assertEquals(candidate({2, 4, 1, 3}), 1)
    lu.assertEquals(candidate({8, 9, 1}), 9)
end

os.exit(lu.LuaUnit.run())