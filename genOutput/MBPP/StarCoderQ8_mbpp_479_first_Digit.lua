-- Write a luathon function to find the first digit of a given number.
local function first_Digit(n)
	return math.floor(math.abs(n) / 10^(math.floor(math.log10(math.abs(n)))))
end

lu = require('luaunit')

function test_humaneval()
local candidate = first_Digit
    lu.assertEquals(candidate(123), 1)
    lu.assertEquals(candidate(456), 4)
    lu.assertEquals(candidate(12), 1)
end

os.exit(lu.LuaUnit.run())