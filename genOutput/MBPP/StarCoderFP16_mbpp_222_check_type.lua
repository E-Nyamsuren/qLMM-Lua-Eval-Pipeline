-- Write a function to check if all the elements in table have same data type or not.
local function check_type(test_tuple)
	local type_table = {}
	for i = 1, #test_tuple do
		local type_name = type(test_tuple[i])
		if type_table[type_name] == nil then
			type_table[type_name] = 1
		else
			type_table[type_name] = type_table[type_name] + 1
		end
	end
	for k, v in pairs(type_table) do
		if v ~= #test_tuple then
			return false
		end
	end
	return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_type
    lu.assertEquals(candidate({5, 6, 7, 3, 5, 6}), true)
    lu.assertEquals(candidate({1, 2, '4'}), false)
    lu.assertEquals(candidate({3, 2, 1, 4, 5}), true)
end

os.exit(lu.LuaUnit.run())