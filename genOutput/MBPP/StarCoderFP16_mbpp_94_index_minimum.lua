-- Given a table of tables, write a function that returns the first value of the table with the smallest second value.
local function index_minimum(test_list)
	local min_index = 1
	local min_value = test_list[1][2]
	for i = 2, #test_list do
		if test_list[i][2] < min_value then
			min_index = i
			min_value = test_list[i][2]
		end
	end
	return test_list[min_index][1]
end

lu = require('luaunit')

function test_humaneval()
local candidate = index_minimum
    lu.assertEquals(candidate({{'Rash', 143}, {'Manjeet', 200}, {'Varsha', 100}}), 'Varsha')
    lu.assertEquals(candidate({{'Yash', 185}, {'Dawood', 125}, {'Sanya', 175}}), 'Dawood')
    lu.assertEquals(candidate({{'Sai', 345}, {'Salman', 145}, {'Ayesha', 96}}), 'Ayesha')
end

os.exit(lu.LuaUnit.run())