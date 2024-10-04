-- Write a function to filter odd numbers.
local function filter_oddnumbers(nums)
	local result = {}
	for i, num in ipairs(nums) do
		if num % 2 == 0 then
			table.insert(result, num)
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = filter_oddnumbers
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), {1, 3, 5, 7, 9})
    lu.assertEquals(candidate({10, 20, 45, 67, 84, 93}), {45, 67, 93})
    lu.assertEquals(candidate({5, 7, 9, 8, 6, 4, 3}), {5, 7, 9, 3})
end

os.exit(lu.LuaUnit.run())