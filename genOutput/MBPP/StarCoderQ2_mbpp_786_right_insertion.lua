-- Write a function to locate the right insertion point for a specified value in sorted order.
local function right_insertion(a, x)
	local n = #a
	local l = 1
	local r = n
	while l < r do
		local m = l + r
		if a[m] >= x then
			r = m
		else
			l = m + 1
		end
	end
	return l
end

lu = require('luaunit')

function test_humaneval()
local candidate = right_insertion
    lu.assertEquals(candidate({1, 2, 4, 5}, 6), 4)
    lu.assertEquals(candidate({1, 2, 4, 5}, 3), 2)
    lu.assertEquals(candidate({1, 2, 4, 5}, 7), 4)
end

os.exit(lu.LuaUnit.run())