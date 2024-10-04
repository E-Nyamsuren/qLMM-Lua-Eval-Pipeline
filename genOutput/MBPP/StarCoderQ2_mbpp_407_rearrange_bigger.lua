-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
	local digits = {}
	local n = n
	local n_length = string.len(tostring(n))
	local n_str = tostring(n)
	local n_digits = {}
	for i = 1, n_length do
		table.insert(n_digits, string.sub(n_str, i, i))
	end
	table.sort(n_digits, function(a, b) return a > b end)
	local n_digits_str = table.concat(n_digits, "")
	local n_digits_int = tonumber(n_digits_str)
	return n_digits_int
end


lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())