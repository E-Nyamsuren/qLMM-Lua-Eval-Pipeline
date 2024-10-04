-- Write a function takes as input two tables [a_1,...,a_n], [b_1,...,b_n] and returns [a_1+b_1,...,a_n+b_n].
local function sum_list(lst1, lst2)
	local sum = {}
	for i = 1, #lst1 do
		sum[i] = lst1[i] + lst2[i]
	end
	return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_list
    lu.assertEquals(candidate({10, 20, 30}, {15, 25, 35}), {25, 45, 65})
    lu.assertEquals(candidate({1, 2, 3}, {5, 6, 7}), {6, 8, 10})
    lu.assertEquals(candidate({15, 20, 30}, {15, 45, 75}), {30, 65, 105})
end

os.exit(lu.LuaUnit.run())