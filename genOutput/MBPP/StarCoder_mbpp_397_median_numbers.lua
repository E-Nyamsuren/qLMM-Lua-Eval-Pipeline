-- Write a function to find the median of three numbers.
local function median_numbers(a, b, c)
	local numbers = {a, b, c}
	table.sort(numbers)
	local median = numbers[2]
	return median
end

lu = require('luaunit')

function test_humaneval()
local candidate = median_numbers
    lu.assertEquals(candidate(25, 55, 65), 55.0)
    lu.assertEquals(candidate(20, 10, 30), 20.0)
    lu.assertEquals(candidate(15, 45, 75), 45.0)
end

os.exit(lu.LuaUnit.run())