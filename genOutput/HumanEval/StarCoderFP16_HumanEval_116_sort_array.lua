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
	local function sort_helper(a, b)
		local a_ones = 0
		local b_ones = 0
		local a_dec = 0
		local b_dec = 0
		for i = 1, #a do
			if a[i] == 1 then
				a_ones = a_ones + 1
			end
			if b[i] == 1 then
				b_ones = b_ones + 1
			end
			a_dec = a_dec + a[i] * 2 ^ (#a - i)
			b_dec = b_dec + b[i] * 2 ^ (#b - i)
		end
		if a_ones == b_ones then
			return a_dec < b_dec
		else
			return a_ones < b_ones
		end
	end
	table.sort(arr, sort_helper)
	return arr
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