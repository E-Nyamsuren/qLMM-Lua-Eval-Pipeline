-- Write a function to find the maximum product subtable of the given table.
local function max_subarray_product(arr)
	local max_product = 0
	local max_product_index = 0
	local max_product_length = 0
	local max_product_length_index = 0
	local max_product_length_index_end = 0
	local max_product_length_index_end_index = 0
	local max_product_length_index_end_index_end = 0
	local max_product_length_index_end_index_end_index = 0
	local max_product_length_index_end_index_end_index_end = 0
	local max_product_length_index_end_index_end_index_end_index = 0
	local max_product_length_index_end_index_end_index_end_index_end = 0
	local max_product_length_index_end_index_end_index_end_index_end_index = 0
	local max_product_length_index_end_index_end_index_end_index_end_index_end = 0
	local max_product_length_index_end_index_end_index_end_index_end_index_end_index = 0
	local max_product_length_index_end_index_end_index_end_index_end_index_end_index_end = 0
	local max_product_length_index_end_index_end_index_end_index_end_index_end_index_end_index = 0
	local max_product_length_index_end_index_end_index_end_index_end_index_end_index_end_index_end = 0
	local max_product_length_index_end_index_end_index_end_index_end_index_end_index_end_index_end_index = 0
	local max_product_length_index_end_index_end_index_end_index_end_index_end_index_end_index_end_index_end = 0
	local max_

lu = require('luaunit')

function test_humaneval()
local candidate = max_subarray_product
    lu.assertEquals(candidate({1, -2, -3, 0, 7, -8, -2}), 112)
    lu.assertEquals(candidate({6, -3, -10, 0, 2}), 180)
    lu.assertEquals(candidate({-2, -40, 0, -2, -3}), 80)
end

os.exit(lu.LuaUnit.run())