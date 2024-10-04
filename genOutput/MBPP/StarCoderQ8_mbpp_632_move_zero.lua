-- Write a luathon function to move all zeroes to the end of the given table.
local function move_zero(num_list)
	local count = 0
	for i = 1, #num_list do
		if num_list[i] == 0 then
			count = count + 1
		end
	end
	for i = 1, count do
		table.insert(num_list, 0)
	end
	for i = 1, #num_list do
		if num_list[i] ~= 0 then
			table.remove(num_list, i)
			table.insert(num_list, 0)
		end
	end
	return num_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = move_zero
    lu.assertEquals(candidate({1, 0, 2, 0, 3, 4}), {1, 2, 3, 4, 0, 0})
    lu.assertEquals(candidate({2, 3, 2, 0, 0, 4, 0, 5, 0}), {2, 3, 2, 4, 5, 0, 0, 0, 0})
    lu.assertEquals(candidate({0, 1, 0, 1, 1}), {1, 1, 1, 0, 0})
end

os.exit(lu.LuaUnit.run())