-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
	local length = string.len(number)
	local sum = 0
	for i = 1, length do
		sum = sum + math.pow(string.sub(number, i, i), length)
	end
	if sum == tonumber(number) then
		return true
	else
		return false
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())