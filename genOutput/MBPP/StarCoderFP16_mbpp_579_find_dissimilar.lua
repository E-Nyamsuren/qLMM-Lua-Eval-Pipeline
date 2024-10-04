-- Write a function to find the dissimilar elements in the given two tables.
local function find_dissimilar(test_tup1, test_tup2)
	local dissimilar_tup = {}
	for i = 1, #test_tup1 do
		if test_tup1[i] ~= test_tup2[i] then
			table.insert(dissimilar_tup, test_tup1[i])
		end
	end
	return dissimilar_tup
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_dissimilar
    lu.assertEquals(candidate({3, 4, 5, 6}, {5, 7, 4, 10}), {3, 6, 7, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, {7, 2, 3, 9}), {1, 4, 7, 9})
    lu.assertEquals(candidate({21, 11, 25, 26}, {26, 34, 21, 36}), {34, 36, 11, 25})
end

os.exit(lu.LuaUnit.run())