-- Write a function to check whether the product of numbers in a table is even or not.
local function is_product_even(arr)
	local prod = 1
	for i = 1, #arr do
		prod = prod * arr[i]
	end
	return prod % 2 == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_product_even
    lu.assertEquals(candidate({1, 2, 3}), true)
    lu.assertEquals(candidate({1, 2, 1, 4}), true)
    lu.assertEquals(candidate({1, 1}), false)
end

os.exit(lu.LuaUnit.run())