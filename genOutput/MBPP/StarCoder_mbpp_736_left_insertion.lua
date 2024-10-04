-- Write a function to locate the left insertion point for a specified value in sorted order. https://www.w3resource.com/luathon-exercises/data-structures-and-algorithms/luathon-data-structure-exercise-24.php
local function left_insertion(a, x)
	local l = 1
	local r = #a
	while l <= r do
		local m = math.floor((l + r) / 2)
		if a[m] < x then
			l = m + 1
		else
			r = m - 1
		end
	end
	return l
end

lu = require('luaunit')

function test_humaneval()
local candidate = left_insertion
    lu.assertEquals(candidate({1, 2, 4, 5}, 6), 4)
    lu.assertEquals(candidate({1, 2, 4, 5}, 3), 2)
    lu.assertEquals(candidate({1, 2, 4, 5}, 7), 4)
end

os.exit(lu.LuaUnit.run())