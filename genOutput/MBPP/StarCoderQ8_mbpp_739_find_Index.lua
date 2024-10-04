-- Write a luathon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
local function find_Index(n)
	local i = 1
	local triangular_number = 0
	while true do
		triangular_number = i * (i + 1) / 2
		if triangular_number >= 10 ^ n then
			return i
		end
		i = i + 1
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Index
    lu.assertEquals(candidate(2), 4)
    lu.assertEquals(candidate(3), 14)
    lu.assertEquals(candidate(4), 45)
end

os.exit(lu.LuaUnit.run())