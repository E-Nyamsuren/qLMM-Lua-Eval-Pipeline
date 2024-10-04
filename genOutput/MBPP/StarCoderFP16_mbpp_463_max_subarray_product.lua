-- Write a function to find the maximum product subtable of the given table.
local function max_subarray_product(arr)
	local max_product = 1
	local max_product_start = 1
	local max_product_end = 1
	local product = 1
	for i = 1, #arr do
		product = product * arr[i]
		if product > max_product then
			max_product = product
			max_product_start = i
			max_product_end = i
		end
		if product == 0 then
			product = 1
			max_product_start = i + 1
			max_product_end = i + 1
		end
	end
	return max_product, max_product_start, max_product_end
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_subarray_product
    lu.assertEquals(candidate({1, -2, -3, 0, 7, -8, -2}), 112)
    lu.assertEquals(candidate({6, -3, -10, 0, 2}), 180)
    lu.assertEquals(candidate({-2, -40, 0, -2, -3}), 80)
end

os.exit(lu.LuaUnit.run())