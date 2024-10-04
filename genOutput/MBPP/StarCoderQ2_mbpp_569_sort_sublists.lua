-- Write a function to sort each subtable of strings in a given table of tables.
local function sort_sublists(list1)
	for _, list2 in ipairs(list1) do
		table.sort(list2)
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_sublists
    lu.assertEquals(candidate({{'green', 'orange'}, {'black', 'white'}, {'white', 'black', 'orange'}}), {{'green', 'orange'}, {'black', 'white'}, {'black', 'orange', 'white'}})
    lu.assertEquals(candidate({{'green', 'orange'}, {'black'}, {'green', 'orange'}, {'white'}}), {{'green', 'orange'}, {'black'}, {'green', 'orange'}, {'white'}})
    lu.assertEquals(candidate({{'a', 'b'}, {'d', 'c'}, {'g', 'h'}, {'f', 'e'}}), {{'a', 'b'}, {'c', 'd'}, {'g', 'h'}, {'e', 'f'}})
end

os.exit(lu.LuaUnit.run())