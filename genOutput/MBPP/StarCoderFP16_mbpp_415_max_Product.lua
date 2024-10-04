-- Write a luathon function to find a pair with highest product from a given table of integers.
local function max_Product(arr)
	local max = 0
	local max_index = 0
	for i = 1, #arr do
		for j = i + 1, #arr do
			local product = arr[i] * arr[j]
			if product > max then
				max = product
				max_index = i
			end
		end
	end
	return max, max_index
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Product
    lu.assertEquals(candidate({1, 2, 3, 4, 7, 0, 8, 4}), {7, 8})
    lu.assertEquals(candidate({0, -1, -2, -4, 5, 0, -6}), {-4, -6})
    lu.assertEquals(candidate({1, 2, 3}), {2, 3})
end

os.exit(lu.LuaUnit.run())