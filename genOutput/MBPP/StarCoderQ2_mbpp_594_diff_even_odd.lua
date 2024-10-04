-- Write a function to find the difference of the first even and first odd number of a given table.
local function diff_even_odd(list1)
	local even_first = list1[1]
	local odd_first = list1[1]
	local even_found = false
	local odd_found = false
	for i = 1, #list1 do
		if list1[i] % 2 == 0 and even_found == false then
			even_first = list1[i]
			even_found = true
		end
		if list1[i] % 2 ~= 0 and odd_found == false then
			odd_first = list1[i]
			odd_found = true
		end
	end
	return even_first - odd_first
end


lu = require('luaunit')

function test_humaneval()
local candidate = diff_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 1)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 9)
end

os.exit(lu.LuaUnit.run())