-- Write a function to round every number of a given table of numbers and print the total sum multiplied by the length of the table.
local function round_and_sum(list1)
	local sum = 0
	for i, v in ipairs(list1) do
		list1[i] = math.floor(v + 0.5)
		sum = sum + list1[i]
	end
	print(sum * #list1)
end

lu = require('luaunit')

function test_humaneval()
local candidate = round_and_sum
    lu.assertEquals(candidate({22.4, 4.0, -16.22, -9.1, 11.0, -12.22, 14.2, -5.2, 17.5}), 243)
    lu.assertEquals(candidate({5, 2, 9, 24.3, 29}), 345)
    lu.assertEquals(candidate({25.0, 56.7, 89.2}), 513)
end

os.exit(lu.LuaUnit.run())