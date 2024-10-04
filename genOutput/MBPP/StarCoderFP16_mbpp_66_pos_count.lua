-- Write a luathon function to count the number of positive numbers in a table.
local function pos_count(list)
	local count = 0
	for i = 1, #list do
		if list[i] > 0 then
			count = count + 1
		end
	end
	return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = pos_count
    lu.assertEquals(candidate({1, -2, 3, -4}), 2)
    lu.assertEquals(candidate({3, 4, 5, -1}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4}), 4)
end

os.exit(lu.LuaUnit.run())