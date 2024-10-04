-- In this Kata, you have to sort a table of non-negative integers according to
-- number of ones in their binary representation in ascending order.
-- For similar number of ones, sort based on decimal value.
-- It must be implemented like this:
-- >>> sort_array({1, 5, 2, 3, 4})
-- {1, 2, 3, 4, 5}
-- >>> sort_array({-2, -3, -4, -5, -6})
-- {-6, -5, -4, -3, -2}
-- >>> sort_array({1, 0, 2, 3, 4})
-- {0, 1, 2, 3, 4}
local function sort_array(arr)
	local ones = {}
	for i = 1, #arr do
		ones[i] = {arr[i], bit.band(arr[i], 0x01) == 0 and 0 or 1}
	end
	table.sort(ones, function(a, b)
		local onesA = a[2]
		local onesB = b[2]
		if onesA ~= onesB then
			return onesA < onesB
		end
		return a[1] < b[1]
	end)
	local sorted = {}
	for i = 1, #ones do
		sorted[i] = ones[i][1]
	end
	return sorted
end


lu = require('luaunit')

function test_humaneval()
local candidate = sort_array
    lu.assertEquals(candidate({1, 5, 2, 3, 4}), {1, 2, 4, 3, 5})
    lu.assertEquals(candidate({-2, -3, -4, -5, -6}), {-4, -2, -6, -5, -3})
    lu.assertEquals(candidate({1, 0, 2, 3, 4}), {0, 1, 2, 4, 3})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4}), {2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77})
    lu.assertEquals(candidate({3, 6, 44, 12, 32, 5}), {32, 3, 5, 6, 12, 44})
    lu.assertEquals(candidate({2, 4, 8, 16, 32}), {2, 4, 8, 16, 32})
    lu.assertEquals(candidate({2, 4, 8, 16, 32}), {2, 4, 8, 16, 32})
end

os.exit(lu.LuaUnit.run())