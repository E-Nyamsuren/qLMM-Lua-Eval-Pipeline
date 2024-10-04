-- Write a luathon function to find the last digit in factorial of a given number.
local function last_Digit_Factorial(n)
	if n == 0 then
		return 1
	end
	return n * last_Digit_Factorial(n - 1) % 10
end

lu = require('luaunit')

function test_humaneval()
local candidate = last_Digit_Factorial
    lu.assertEquals(candidate(4), 4)
    lu.assertEquals(candidate(21), 0)
    lu.assertEquals(candidate(30), 0)
end

os.exit(lu.LuaUnit.run())