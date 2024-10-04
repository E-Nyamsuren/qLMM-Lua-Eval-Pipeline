-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
	local digits = {}
	local result = 0
	local i = 1
	while n > 0 do
		digits[i] = n % 10
		n = math.floor(n / 10)
		i = i + 1
	end
	local j = i - 1
	while j > 1 do
		if digits[j] > digits[j - 1] then
			break
		end
		j = j - 1
	end
	if j == 1 then
		return 0
	end
	local k = j
	while k < i - 1 do
		if digits[k] > digits[j - 1] then
			break
		end
		k = k + 1
	end
	local temp = digits[j - 1]
	digits[j - 1] = digits[k]
	digits[k] = temp
	local l = j
	local m = i - 1
	while l < m do
		temp = digits[l]
		digits[l] = digits[m]
		digits[m] = temp
		l = l + 1
		m = m - 1
	end
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