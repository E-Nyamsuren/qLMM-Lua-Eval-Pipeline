-- Write a function to locate the right insertion point for a specified value in sorted order.
local function right_insertion(a, x)
	local i = 1
	local j = #a
	while i <= j do
		local mid = math.floor((i + j) / 2)
		if a[mid] < x then
			i = mid + 1
		else
			j = mid - 1
		end
	end
	return i
end

lu = require('luaunit')

function test_humaneval()
local candidate = right_insertion
    lu.assertEquals(candidate({1, 2, 4, 5}, 6), 4)
    lu.assertEquals(candidate({1, 2, 4, 5}, 3), 2)
    lu.assertEquals(candidate({1, 2, 4, 5}, 7), 4)
end

os.exit(lu.LuaUnit.run())