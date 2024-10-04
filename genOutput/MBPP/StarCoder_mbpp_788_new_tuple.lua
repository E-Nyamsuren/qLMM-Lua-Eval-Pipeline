-- Write a function to create a new table from the given string and table.
local function new_tuple(test_list, test_str)
	local new_table = {}
	for i, v in ipairs(test_list) do
		new_table[i] = v
	end
	new_table[#new_table + 1] = test_str
	return new_table
end

lu = require('luaunit')

function test_humaneval()
local candidate = new_tuple
    lu.assertEquals(candidate({'WEB', 'is'}, 'best'), {'WEB', 'is', 'best'})
    lu.assertEquals(candidate({'We', 'are'}, 'Developers'), {'We', 'are', 'Developers'})
    lu.assertEquals(candidate({'Part', 'is'}, 'Wrong'), {'Part', 'is', 'Wrong'})
end

os.exit(lu.LuaUnit.run())