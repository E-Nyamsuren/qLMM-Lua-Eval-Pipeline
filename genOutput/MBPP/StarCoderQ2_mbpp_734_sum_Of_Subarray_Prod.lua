-- Write a luathon function to find sum of products of all possible subtables of a given table. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subtables/
local function sum_Of_Subarray_Prod(arr)
	local n = #arr
	local sum = 0
	for i = 1, n do
		for j = i, n do
			local prod = 1
			for k = i, j do
				prod = prod * arr[k]
			end
			sum = sum + prod
		end
	end
	return sum
end


lu = require('luaunit')

function test_humaneval()
local candidate = sum_Of_Subarray_Prod
    lu.assertEquals(candidate({1, 2, 3}), 20)
    lu.assertEquals(candidate({1, 2}), 5)
    lu.assertEquals(candidate({1, 2, 3, 4}), 84)
end

os.exit(lu.LuaUnit.run())