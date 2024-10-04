-- Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros.
local function decimal_to_binary(n)
	local result = ""
	while n > 0 do
		result = n % 2 .. result
		n = math.floor(n / 2)
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = decimal_to_binary
    lu.assertEquals(candidate(8), '1000')
    lu.assertEquals(candidate(18), '10010')
    lu.assertEquals(candidate(7), '111')
end

os.exit(lu.LuaUnit.run())