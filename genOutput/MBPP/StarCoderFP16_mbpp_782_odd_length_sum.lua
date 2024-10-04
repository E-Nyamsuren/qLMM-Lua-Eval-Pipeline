-- Write a luathon function to find the sum of all odd length subtables. https://www.geeksforgeeks.org/sum-of-all-odd-length-subtables/
local function odd_length_sum(arr)
	local sum = 0
	for i = 1, #arr do
		local odd_length = 0
		for j = i, #arr do
			odd_length = odd_length + 1
			if odd_length % 2 == 1 then
				sum = sum + arr[j]
			end
		end
	end
	return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_length_sum
    lu.assertEquals(candidate({1, 2, 4}), 14)
    lu.assertEquals(candidate({1, 2, 1, 2}), 15)
    lu.assertEquals(candidate({1, 7}), 8)
end

os.exit(lu.LuaUnit.run())