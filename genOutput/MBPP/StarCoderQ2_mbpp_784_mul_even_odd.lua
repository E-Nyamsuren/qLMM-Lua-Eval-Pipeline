-- Write a function to find the product of first even and odd number of a given table.
local function mul_even_odd(list1)
	local even_product = 1
	local odd_product = 1
	local even_count = 0
	local odd_count = 0
	for i = 1, #list1 do
		if list1[i] % 2 == 0 then
			even_product = even_product * list1[i]
			even_count = even_count + 1
		else
			odd_product = odd_product * list1[i]
			odd_count = odd_count + 1
		end
	end
	if even_count == 0 or odd_count == 0 then
		return "No even or odd numbers in the list"
	end
	return even_product, odd_product
end

lu = require('luaunit')

function test_humaneval()
local candidate = mul_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 4)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 2)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 10)
end

os.exit(lu.LuaUnit.run())