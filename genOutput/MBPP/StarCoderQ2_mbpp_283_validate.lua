-- Write a luathon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
local function validate(n)
	local digits = {}
	local num = n
	while num > 0 do
		local digit = num % 10
		table.insert(digits, digit)
		num = math.floor(num / 10)
	end
	local count = 0
	for i = 1, #digits do
		if digits[i] > count then
			return false
		end
		count = digits[i]
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