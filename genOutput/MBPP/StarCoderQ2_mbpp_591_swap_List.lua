-- Write a luathon function to interchange the first and last elements in a table.
local function swap_List(newList)
	local first = newList[1]
	local last = newList[#newList]
	newList[1] = last
	newList[#newList] = first
	return newList
end

lu = require('luaunit')

function test_humaneval()
local candidate = swap_List
    lu.assertEquals(candidate({12, 35, 9, 56, 24}), {24, 35, 9, 56, 12})
    lu.assertEquals(candidate({1, 2, 3}), {3, 2, 1})
    lu.assertEquals(candidate({4, 5, 6}), {6, 5, 4})
end

os.exit(lu.LuaUnit.run())