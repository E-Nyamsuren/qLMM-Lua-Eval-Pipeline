-- Create a function which returns the largest index of an element which
-- is not greater than or equal to the element immediately preceding it. If
-- no such element exists then return -1. The given table will not contain
-- duplicate values.
-- Examples:
-- >>> can_arrange({1, 2, 4, 3, 5})
-- 3
-- >>> can_arrange({1, 2, 3})
-- -1
local function can_arrange(arr)
	local n = #arr
	local max_index = -1
	for i = 1, n - 1 do
		if arr[i] >= arr[i + 1] then
			max_index = i
		end
	end
	return max_index
end


lu = require('luaunit')

function test_humaneval()
local candidate = can_arrange
    lu.assertEquals(candidate({1, 2, 4, 3, 5}), 3)
    lu.assertEquals(candidate({1, 2, 4, 5}), -1)
    lu.assertEquals(candidate({1, 4, 2, 5, 6, 7, 8, 9, 10}), 2)
    lu.assertEquals(candidate({4, 8, 5, 7, 3}), 4)
    lu.assertEquals(candidate({}), -1)
end

os.exit(lu.LuaUnit.run())