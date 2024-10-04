-- Write a function to find all possible combinations of the elements of a given table.
local function combinations_list(list1)
	local list = {}
	local function combinations(list1, list2, n)
		if n == 0 then
			table.insert(list, list2)
		else
			for i = 1, #list1 do
				local new_list2 = {}
				for j = 1, #list2 do
					table.insert(new_list2, list2[j])
				end
				table.insert(new_list2, list1[i])
				combinations(list1, new_list2, n - 1)
			end
		end
	end
	combinations(list1, {}, #list1)
	return list
end

lu = require('luaunit')

function test_humaneval()
local candidate = combinations_list
    lu.assertEquals(candidate({'orange', 'red', 'green', 'blue'}), {{}, {'orange'}, {'red'}, {'red', 'orange'}, {'green'}, {'green', 'orange'}, {'green', 'red'}, {'green', 'red', 'orange'}, {'blue'}, {'blue', 'orange'}, {'blue', 'red'}, {'blue', 'red', 'orange'}, {'blue', 'green'}, {'blue', 'green', 'orange'}, {'blue', 'green', 'red'}, {'blue', 'green', 'red', 'orange'}})
    lu.assertEquals(candidate({'red', 'green', 'blue', 'white', 'black', 'orange'}), {{}, {'red'}, {'green'}, {'green', 'red'}, {'blue'}, {'blue', 'red'}, {'blue', 'green'}, {'blue', 'green', 'red'}, {'white'}, {'white', 'red'}, {'white', 'green'}, {'white', 'green', 'red'}, {'white', 'blue'}, {'white', 'blue', 'red'}, {'white', 'blue', 'green'}, {'white', 'blue', 'green', 'red'}, {'black'}, {'black', 'red'}, {'black', 'green'}, {'black', 'green', 'red'}, {'black', 'blue'}, {'black', 'blue', 'red'}, {'black', 'blue', 'green'}, {'black', 'blue', 'green', 'red'}, {'black', 'white'}, {'black', 'white', 'red'}, {'black', 'white', 'green'}, {'black', 'white', 'green', 'red'}, {'black', 'white', 'blue'}, {'black', 'white', 'blue', 'red'}, {'black', 'white', 'blue', 'green'}, {'black', 'white', 'blue', 'green', 'red'}, {'orange'}, {'orange', 'red'}, {'orange', 'green'}, {'orange', 'green', 'red'}, {'orange', 'blue'}, {'orange', 'blue', 'red'}, {'orange', 'blue', 'green'}, {'orange', 'blue', 'green', 'red'}, {'orange', 'white'}, {'orange', 'white', 'red'}, {'orange', 'white', 'green'}, {'orange', 'white', 'green', 'red'}, {'orange', 'white', 'blue'}, {'orange', 'white', 'blue', 'red'}, {'orange', 'white', 'blue', 'green'}, {'orange', 'white', 'blue', 'green', 'red'}, {'orange', 'black'}, {'orange', 'black', 'red'}, {'orange', 'black', 'green'}, {'orange', 'black', 'green', 'red'}, {'orange', 'black', 'blue'}, {'orange', 'black', 'blue', 'red'}, {'orange', 'black', 'blue', 'green'}, {'orange', 'black', 'blue', 'green', 'red'}, {'orange', 'black', 'white'}, {'orange', 'black', 'white', 'red'}, {'orange', 'black', 'white', 'green'}, {'orange', 'black', 'white', 'green', 'red'}, {'orange', 'black', 'white', 'blue'}, {'orange', 'black', 'white', 'blue', 'red'}, {'orange', 'black', 'white', 'blue', 'green'}, {'orange', 'black', 'white', 'blue', 'green', 'red'}})
    lu.assertEquals(candidate({'red', 'green', 'black', 'orange'}), {{}, {'red'}, {'green'}, {'green', 'red'}, {'black'}, {'black', 'red'}, {'black', 'green'}, {'black', 'green', 'red'}, {'orange'}, {'orange', 'red'}, {'orange', 'green'}, {'orange', 'green', 'red'}, {'orange', 'black'}, {'orange', 'black', 'red'}, {'orange', 'black', 'green'}, {'orange', 'black', 'green', 'red'}})
end

os.exit(lu.LuaUnit.run())