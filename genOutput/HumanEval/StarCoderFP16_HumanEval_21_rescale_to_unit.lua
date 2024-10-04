-- Given table of numbers (of at least two elements), apply a linear transform to that table,
-- such that the smallest number will become 0 and the largest will become 1
-- >>> rescale_to_unit({1.0, 2.0, 3.0, 4.0, 5.0})
-- {0.0, 0.25, 0.5, 0.75, 1.0}
local function rescale_to_unit(numbers)
	local min = numbers[1]
	local max = numbers[1]
	for _, n in ipairs(numbers) do
		if n < min then
			min = n
		elseif n > max then
			max = n
		end
	end
	local range = max - min
	for i, n in ipairs(numbers) do
		numbers[i] = (n - min) / range
	end
	return numbers
end

lu = require('luaunit')

function test_humaneval()
local candidate = rescale_to_unit
    lu.assertEquals(candidate({2.0, 49.9}), {0.0, 1.0})
    lu.assertEquals(candidate({100.0, 49.9}), {1.0, 0.0})
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0}), {0.0, 0.25, 0.5, 0.75, 1.0})
    lu.assertEquals(candidate({2.0, 1.0, 5.0, 3.0, 4.0}), {0.25, 0.0, 1.0, 0.5, 0.75})
    lu.assertEquals(candidate({12.0, 11.0, 15.0, 13.0, 14.0}), {0.25, 0.0, 1.0, 0.5, 0.75})
end

os.exit(lu.LuaUnit.run())