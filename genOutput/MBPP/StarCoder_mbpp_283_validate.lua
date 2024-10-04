-- Write a luathon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
local function validate(n)
	local digits = {}
	local count = 0
	while n > 0 do
		local digit = n % 10
		if digits[digit] then
			return false
		end
		digits[digit] = true
		n = math.floor(n / 10)
		count = count + 1
	end
	for i = 1, count do
		if digits[i] and digits[i] > i then
			return false
		end
	end
	return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = validate
    lu.assertEquals(candidate(1234), true)
    lu.assertEquals(candidate(51241), false)
    lu.assertEquals(candidate(321), true)
end

os.exit(lu.LuaUnit.run())