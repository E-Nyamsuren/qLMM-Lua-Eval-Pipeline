-- Write a luathon function to find whether a number is divisible by 11.
local function is_Diff(n)
	local sum = 0
	local diff = 0
	local i = 1
	while n > 0 do
		if i % 2 == 0 then
			sum = sum + n % 10
		else
			diff = diff + n % 10
		end
		n = math.floor(n / 10)
		i = i + 1
	end
	return (sum - diff) % 11 == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Diff
    lu.assertEquals(candidate(12345), false)
    lu.assertEquals(candidate(1212112), true)
    lu.assertEquals(candidate(1212), false)
end

os.exit(lu.LuaUnit.run())