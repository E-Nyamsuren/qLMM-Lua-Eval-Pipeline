-- Write a luathon function to interchange the first and last element in a given table.
local function swap_List(newList)
	local temp = newList[1]
	newList[1] = newList[#newList]
	newList[#newList] = temp
	return newList
end

lu = require('luaunit')

function test_humaneval()
local candidate = swap_List
    lu.assertEquals(candidate({1, 2, 3}), {3, 2, 1})
    lu.assertEquals(candidate({1, 2, 3, 4, 4}), {4, 2, 3, 4, 1})
    lu.assertEquals(candidate({4, 5, 6}), {6, 5, 4})
end

os.exit(lu.LuaUnit.run())