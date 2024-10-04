-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
	local n1_str = tostring(n1)
	local n2_str = tostring(n2)
	local n1_len = #n1_str
	local n2_len = #n2_str
	local n1_digits = {}
	local n2_digits = {}
	local n1_diff = 0
	local n2_diff = 0
	local i = 1
	while i <= n1_len do
		n1_digits[i] = tonumber(string.sub(n1_str, i, i))
		i = i + 1
	end
	i = 1
	while i <= n2_len do
		n2_digits[i] = tonumber(string.sub(n2_str, i, i))
		i = i + 1
	end
	i = 1
	while i <= n1_len do
		n1_diff = n1_diff + math.abs(n1_digits[i] - n2_digits[i])
		i = i + 1
	end
	i = 1
	while i <= n2_len do
		n2_diff = n2_diff + math.abs(n1_digits[i] - n2_digits[i])
		i = i + 1
	end
	return n1_diff + n2_diff
end

lu = require('luaunit')

function test_humaneval()
local candidate = digit_distance_nums
    lu.assertEquals(candidate(1, 2), 1)
    lu.assertEquals(candidate(23, 56), 6)
    lu.assertEquals(candidate(123, 256), 7)
end

os.exit(lu.LuaUnit.run())