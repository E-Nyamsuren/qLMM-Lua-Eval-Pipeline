-- Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that table.
local function max_product(arr)
	local max_product = 0
	local max_product_ending_here = 1
	local max_product_starting_here = 1
	for i = 1, #arr do
		if arr[i] > 0 then
			max_product_ending_here = max_product_ending_here * arr[i]
			max_product_starting_here = max_product_starting_here * arr[i]
		elseif arr[i] < 0 then
			local temp = max_product_ending_here
			max_product_ending_here = max_product_starting_here
			max_product_starting_here = temp
		end
		if max_product_ending_here > max_product then
			max_product = max_product_ending_here
		end
	end
	return max_product
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_product
    lu.assertEquals(candidate({3, 100, 4, 5, 150, 6}), 3000)
    lu.assertEquals(candidate({4, 42, 55, 68, 80}), 50265600)
    lu.assertEquals(candidate({10, 22, 9, 33, 21, 50, 41, 60}), 2460)
end

os.exit(lu.LuaUnit.run())