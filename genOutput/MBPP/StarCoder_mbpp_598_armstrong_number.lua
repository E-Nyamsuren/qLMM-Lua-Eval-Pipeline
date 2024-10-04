-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
	local digits = {}
	local count = 0
	local temp = number
	while temp > 0 do
		temp = math.floor(temp / 10)
		count = count + 1
	end
	temp = number
	for i = 1, count do
		digits[i] = temp % 10
		temp = math.floor(temp / 10)
	end
	local sum = 0
	for i = 1, count do
		sum = sum + digits[i] ^ count
	end
	if sum == number then
		return true
	else
		return false
	end
end
print(armstrong_number(153))
print(armstrong_number(370))
print(armstrong_number(371))
print(armstrong_number(407))


lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())