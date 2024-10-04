-- Write a luathon function which takes a table and returns a table with the same elements, but the k'th element removed.
local function remove_kth_element(list1, L)
	local new_list = {}
	for i = 1, #list1 do
		if i ~= L then
			new_list[#new_list + 1] = list1[i]
		end
	end
	return new_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_kth_element
    lu.assertEquals(candidate({1, 1, 2, 3, 4, 4, 5, 1}, 3), {1, 1, 3, 4, 4, 5, 1})
    lu.assertEquals(candidate({0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4}, 4), {0, 0, 1, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4})
    lu.assertEquals(candidate({10, 10, 15, 19, 18, 18, 17, 26, 26, 17, 18, 10}, 5), {10, 10, 15, 19, 18, 17, 26, 26, 17, 18, 10})
end

os.exit(lu.LuaUnit.run())