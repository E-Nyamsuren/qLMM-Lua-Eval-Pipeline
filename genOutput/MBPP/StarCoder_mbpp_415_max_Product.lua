-- Write a luathon function to find a pair with highest product from a given table of integers.
local function max_Product(arr)
	local max1 = arr[1]
	local max2 = arr[2]
	local min1 = arr[1]
	local min2 = arr[2]
	local result = arr[1] * arr[2]
	for i = 3, #arr do
		if arr[i] > max1 then
			max2 = max1
			max1 = arr[i]
		elseif arr[i] > max2 then
			max2 = arr[i]
		end
		if arr[i] < min1 then
			min2 = min1
			min1 = arr[i]
		elseif arr[i] < min2 then
			min2 = arr[i]
		end
		result = math.max(result, max1 * max2, min1 * min2)
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Product
    lu.assertEquals(candidate({1, 2, 3, 4, 7, 0, 8, 4}), {7, 8})
    lu.assertEquals(candidate({0, -1, -2, -4, 5, 0, -6}), {-4, -6})
    lu.assertEquals(candidate({1, 2, 3}), {2, 3})
end

os.exit(lu.LuaUnit.run())