-- Write a function to find the median of three numbers.
local function median_numbers(a, b, c)
	local median = 0
	if a > b then
		if a > c then
			if b > c then
				median = b
			else
				median = c
			end
		else
			median = a
		end
	else
		if a < c then
			if b < c then
				median = b
			else
				median = c
			end
		else
			median = a
		end
	end
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