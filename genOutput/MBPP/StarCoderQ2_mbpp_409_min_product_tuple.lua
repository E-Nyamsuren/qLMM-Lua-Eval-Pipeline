-- Write a function to find the minimum product from the pairs of tables within a given table.
local function min_product_tuple(list1)
	local min = list1[1]*list1[2]
	for i = 2, #list1, 2 do
		local prod = list1[i]*list1[i+1]
		if prod < min then
			min = prod
		end
	end
	return min
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_product_tuple
    lu.assertEquals(candidate({{2, 7}, {2, 6}, {1, 8}, {4, 9}}), 8)
    lu.assertEquals(candidate({{10, 20}, {15, 2}, {5, 10}}), 30)
    lu.assertEquals(candidate({{11, 44}, {10, 15}, {20, 5}, {12, 9}}), 100)
end

os.exit(lu.LuaUnit.run())