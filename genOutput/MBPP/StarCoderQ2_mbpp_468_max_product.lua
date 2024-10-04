-- Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that table.
local function max_product(arr)
	local n = #arr
	local max_product = 0
	local max_product_index = 0
	for i = 1, n do
		if arr[i] > max_product then
			max_product = arr[i]
			max_product_index = i
		end
	end
	local max_product_index = max_product_index
	local max_product = max_product
	for i = max_product_index - 1, 1, -1 do
		if arr[i] * arr[i - 1] > max_product then
			max_product = arr[i] * arr[i - 1]
			max_product_index = i
		end
	end
	return max_product_index, max_product
end


lu = require('luaunit')

function test_humaneval()
local candidate = max_product
    lu.assertEquals(candidate({3, 100, 4, 5, 150, 6}), 3000)
    lu.assertEquals(candidate({4, 42, 55, 68, 80}), 50265600)
    lu.assertEquals(candidate({10, 22, 9, 33, 21, 50, 41, 60}), 2460)
end

os.exit(lu.LuaUnit.run())