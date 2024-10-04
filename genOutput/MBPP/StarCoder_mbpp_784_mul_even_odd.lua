-- Write a function to find the product of first even and odd number of a given table.
local function mul_even_odd(list1)
	local even_product = 1
	local odd_product = 1
	local count_even = 0
	local count_odd = 0
	for i,v in ipairs(list1) do
		if v % 2 == 0 then
			even_product = even_product * v
			count_even = count_even + 1
		else
			odd_product = odd_product * v
			count_odd = count_odd + 1
		end
	end
	if count_even == 0 or count_odd == 0 then
		return "No even or odd numbers in the list"
	else
		return even_product * odd_product
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = mul_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 4)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 2)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 10)
end

os.exit(lu.LuaUnit.run())