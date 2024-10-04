-- Return a greatest common divisor of two integers a and b
-- >>> greatest_common_divisor(3, 5)
-- 1
-- >>> greatest_common_divisor(25, 15)
-- 5
local function greatest_common_divisor(a, b)
	local function gcd(a, b)
		if b == 0 then
			return a
		end
		return gcd(b, a % b)
	end
	return gcd(a, b)
end


lu = require('luaunit')

function test_humaneval()
local candidate = greatest_common_divisor
    lu.assertEquals(candidate(3, 7), 1)
    lu.assertEquals(candidate(10, 15), 5)
    lu.assertEquals(candidate(49, 14), 7)
    lu.assertEquals(candidate(144, 60), 12)
end

os.exit(lu.LuaUnit.run())