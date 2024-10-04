-- Circular shift the digits of the integer x, shift the digits right by shift
-- and return the result as a string.
-- If shift > number of digits, return digits reversed.
-- >>> circular_shift(12, 1)
-- '21'
-- >>> circular_shift(12, 2)
-- '12'
local function circular_shift(x, shift)
	local digits = {}
	local n = 0
	while x > 0 do
		n = n + 1
		digits[n] = x % 10
		x = math.floor(x / 10)
	end
	local result = ""
	for i = 1, n do
		local j = i + shift
		if j > n then
			j = j - n
		end
		result = result .. digits[j]
	end
	return result
end


lu = require('luaunit')

function test_humaneval()
local candidate = circular_shift
    lu.assertEquals(candidate(100, 2), '001')
    lu.assertEquals(candidate(12, 2), '12')
    lu.assertEquals(candidate(97, 8), '79')
    lu.assertEquals(candidate(12, 1), '21')
    lu.assertEquals(candidate(11, 101), '11')
end

os.exit(lu.LuaUnit.run())