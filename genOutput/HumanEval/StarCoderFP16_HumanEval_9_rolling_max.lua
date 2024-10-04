-- From a given table of integers, generate a table of rolling maximum element found until given moment
-- in the sequence.
-- >>> rolling_max({1, 2, 3, 2, 3, 4, 2})
-- {1, 2, 3, 3, 3, 4, 4}
local function rolling_max(numbers)
	local max = numbers[1]
	local result = {}
	for i = 1, #numbers do
		result[i] = max
		max = math.max(max, numbers[i])
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = rolling_max
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 2, 3, 4})
    lu.assertEquals(candidate({4, 3, 2, 1}), {4, 4, 4, 4})
    lu.assertEquals(candidate({3, 2, 3, 100, 3}), {3, 3, 3, 100, 100})
end

os.exit(lu.LuaUnit.run())