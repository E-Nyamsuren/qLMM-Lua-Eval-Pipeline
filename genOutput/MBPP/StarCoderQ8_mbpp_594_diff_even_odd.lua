-- Write a function to find the difference of the first even and first odd number of a given table.
local function diff_even_odd(list1)
	local even_index = nil
	local odd_index = nil
	for i, v in ipairs(list1) do
		if v % 2 == 0 then
			even_index = i
			break
		end
	end
	for i, v in ipairs(list1) do
		if v % 2 == 1 then
			odd_index = i
			break
		end
	end
	if even_index and odd_index then
		return list1[even_index] - list1[odd_index]
	else
		return "No even or odd number found"
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = diff_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 1)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 9)
end

os.exit(lu.LuaUnit.run())