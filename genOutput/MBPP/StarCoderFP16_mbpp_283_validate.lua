-- Write a luathon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
local function validate(n)
	local digits = {}
	local n = tostring(n)
	for i = 1, #n do
		digits[n:sub(i, i)] = (digits[n:sub(i, i)] or 0) + 1
	end
	for i = 1, #n do
		if digits[n:sub(i, i)] > n:sub(i, i) then
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