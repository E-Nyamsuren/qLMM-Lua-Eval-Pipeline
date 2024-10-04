-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
	local digits = {}
	while n > 0 do
		digits[#digits + 1] = n % 10
		n = math.floor(n / 10)
	end
	local is_undulating = true
	for i = 1, #digits - 1 do
		if math.abs(digits[i] - digits[i + 1]) ~= 1 then
			is_undulating = false
			break
		end
	end
	return is_undulating
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())