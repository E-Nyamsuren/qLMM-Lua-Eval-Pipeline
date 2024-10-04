-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
	local digits = {}
	local num = n
	while num > 0 do
		table.insert(digits, num % 10)
		num = math.floor(num / 10)
	end
	table.sort(digits)
	local result = 0
	for i = 1, #digits do
		result = result * 10 + digits[i]
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())