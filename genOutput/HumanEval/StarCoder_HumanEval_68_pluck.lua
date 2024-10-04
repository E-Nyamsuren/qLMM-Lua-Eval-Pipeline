-- "Given a table representing a branch of a tree that has non-negative integer nodes
-- your task is to pluck one of the nodes and return it.
-- The plucked node should be the node with the smallest even value.
-- If multiple nodes with the same smallest even value are found return the node that has smallest index.
-- The plucked node should be returned in a table, [ smalest_value, its index ],
-- If there are no even values or the given table is empty, return [].
-- Example 1:
-- >>> pluck({4, 2, 3})
-- {2, 1}
-- Explanation: 2 has the smallest even value, and 2 has the smallest index.
-- Example 2:
-- >>> pluck({1, 2, 3})
-- {2, 1}
-- Explanation: 2 has the smallest even value, and 2 has the smallest index.
-- Example 3:
-- >>> pluck({})
-- {}
-- Example 4:
-- >>> pluck({5, 0, 3, 0, 4, 2})
-- {0, 1}
-- Explanation: 0 is the smallest value, but  there are two zeros,
--              so we will choose the first zero, which has the smallest index.
-- Constraints:
--     * 1 <= nodes.length <= 10000
--     * 0 <= node.value
local function pluck(arr)
	local min_even = math.huge
	local min_index = -1
	for i, v in ipairs(arr) do
		if v % 2 == 0 and v < min_even then
			min_even = v
			min_index = i
		end
	end
	return min_even == math.huge and {} or {min_even, min_index}
end


lu = require('luaunit')

function test_humaneval()
local candidate = pluck
    lu.assertEquals(candidate({4, 2, 3}), {2, 1})
    lu.assertEquals(candidate({1, 2, 3}), {2, 1})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({5, 0, 3, 0, 4, 2}), {0, 1})
    lu.assertEquals(candidate({1, 2, 3, 0, 5, 3}), {0, 3})
    lu.assertEquals(candidate({5, 4, 8, 4, 8}), {4, 1})
    lu.assertEquals(candidate({7, 6, 7, 1}), {6, 1})
    lu.assertEquals(candidate({7, 9, 7, 1}), {})
end

os.exit(lu.LuaUnit.run())