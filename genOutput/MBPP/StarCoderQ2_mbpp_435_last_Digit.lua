-- Write a luathon function to find the last digit of a given number.
local function last_Digit(n)
	local last_digit = n % 10
	return last_digit
end

lu = require('luaunit')

function test_humaneval()
local candidate = last_Digit
    lu.assertEquals(candidate(123), 3)
    lu.assertEquals(candidate(25), 5)
    lu.assertEquals(candidate(30), 0)
end

os.exit(lu.LuaUnit.run())