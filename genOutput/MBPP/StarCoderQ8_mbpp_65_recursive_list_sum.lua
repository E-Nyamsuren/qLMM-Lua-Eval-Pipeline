-- Write a function to flatten a table and sum all of its elements.
local function recursive_list_sum(data_list)
	local sum = 0
	for i, v in ipairs(data_list) do
		if type(v) == "table" then
			sum = sum + recursive_list_sum(v)
		else
			sum = sum + v
		end
	end
	return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = recursive_list_sum
    lu.assertEquals(candidate({1, 2, {3, 4}, {5, 6}}), 21)
    lu.assertEquals(candidate({7, 10, {15, 14}, {19, 41}}), 106)
    lu.assertEquals(candidate({10, 20, {30, 40}, {50, 60}}), 210)
end

os.exit(lu.LuaUnit.run())