-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
	local count = 0
	local temp = number
	while temp > 0 do
		temp = temp / 10
		count = count + 1
	end
	local sum = 0
	temp = number
	for i = 1, count do
		sum = sum + math.pow(temp % 10, count)
		temp = math.floor(temp / 10)
	end
	return sum == number
end

lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())