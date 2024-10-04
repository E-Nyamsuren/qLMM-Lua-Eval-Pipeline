-- Write a function that takes in a table and an element and inserts the element before each element in the table, and returns the resulting table.
local function insert_element(list, element)
	local new_list = {}
	for i = 1, #list do
		table.insert(new_list, i, element)
	end
	return new_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = insert_element
    lu.assertEquals(candidate({'Red', 'Green', 'Black'}, 'c'), {'c', 'Red', 'c', 'Green', 'c', 'Black'})
    lu.assertEquals(candidate({'python', 'java'}, 'program'), {'program', 'python', 'program', 'java'})
    lu.assertEquals(candidate({'happy', 'sad'}, 'laugh'), {'laugh', 'happy', 'laugh', 'sad'})
end

os.exit(lu.LuaUnit.run())