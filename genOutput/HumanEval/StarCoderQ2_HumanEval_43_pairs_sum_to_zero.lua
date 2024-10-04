-- pairs_sum_to_zero takes a table of integers as an input.
-- it returns true if there are two distinct elements in the table that
-- sum to zero, and false otherwise.
-- >>> pairs_sum_to_zero({1, 3, 5, 0})
-- false
-- >>> pairs_sum_to_zero({1, 3, -2, 1})
-- false
-- >>> pairs_sum_to_zero({1, 2, 3, 7})
-- false
-- >>> pairs_sum_to_zero({2, 4, -5, 3, 5, 7})
-- true
-- >>> pairs_sum_to_zero({1})
-- false
local function pairs_sum_to_zero(l)
	local s = {}
	for _,v in ipairs(l) do
		s[v] = (s[v] or 0) + 1
	end
	for _,v in ipairs(l) do
		if s[0-v] and (s[0-v] > 1 or (s[0-v] == 1 and v ~= 0)) then
			return true
		end
	end
	return false
end


lu = require('luaunit')

function test_humaneval()
local candidate = pairs_sum_to_zero
    lu.assertEquals(candidate({1, 3, 5, 0}), false)
    lu.assertEquals(candidate({1, 3, -2, 1}), false)
    lu.assertEquals(candidate({1, 2, 3, 7}), false)
    lu.assertEquals(candidate({2, 4, -5, 3, 5, 7}), true)
    lu.assertEquals(candidate({1}), false)
    lu.assertEquals(candidate({-3, 9, -1, 3, 2, 30}), true)
    lu.assertEquals(candidate({-3, 9, -1, 3, 2, 31}), true)
    lu.assertEquals(candidate({-3, 9, -1, 4, 2, 30}), false)
    lu.assertEquals(candidate({-3, 9, -1, 4, 2, 31}), false)
end

os.exit(lu.LuaUnit.run())