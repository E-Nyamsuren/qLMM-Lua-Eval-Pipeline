-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)
	local reverse = 0
	local temp = n
	while temp > 0 do
		reverse = reverse * 10 + temp % 10
		temp = math.floor(temp / 10)
	end
	return n == reverse - 2
end

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())