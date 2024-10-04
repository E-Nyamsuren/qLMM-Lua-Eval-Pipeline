-- Write a luathon function to return the negative numbers in a table.
local function neg_nos(list1)
	local list2 = {}
	for i = 1, #list1 do
		if list1[i] < 0 then
			table.insert(list2, list1[i])
		end
	end
	return list2
end

lu = require('luaunit')

function test_humaneval()
local candidate = neg_nos
    lu.assertEquals(candidate({-1, 4, 5, -6}), {-1, -6})
    lu.assertEquals(candidate({-1, -2, 3, 4}), {-1, -2})
    lu.assertEquals(candidate({-7, -6, 8, 9}), {-7, -6})
end

os.exit(lu.LuaUnit.run())