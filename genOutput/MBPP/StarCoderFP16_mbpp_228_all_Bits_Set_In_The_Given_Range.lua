-- Write a luathon function to check whether all the bits are unset in the given range or not.
local function all_Bits_Set_In_The_Given_Range(n, l, r)
	local mask = 0
	for i = l, r do
		mask = mask + 2 ^ (i - 1)
	end
	return n & mask == mask
end

lu = require('luaunit')

function test_humaneval()
local candidate = all_Bits_Set_In_The_Given_Range
    lu.assertEquals(candidate(4, 1, 2), true)
    lu.assertEquals(candidate(17, 2, 4), true)
    lu.assertEquals(candidate(39, 4, 6), false)
end

os.exit(lu.LuaUnit.run())