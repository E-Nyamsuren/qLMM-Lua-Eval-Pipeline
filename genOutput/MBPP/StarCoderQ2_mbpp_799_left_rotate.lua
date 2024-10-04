-- Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit.
local function left_rotate(n, d)
	local mask = (1<<d) - 1
	local mask_complement = ~mask
	local d_bits = (n & mask) * 2^(32 - d)
	local d_bits_complement = (n & mask_complement) * 2^(32 - d)
	return (n & mask_complement) + d_bits + d_bits_complement
end

lu = require('luaunit')

function test_humaneval()
local candidate = left_rotate
    lu.assertEquals(candidate(16, 2), 64)
    lu.assertEquals(candidate(10, 2), 40)
    lu.assertEquals(candidate(99, 3), 792)
    lu.assertEquals(candidate(99, 3), 792)
    lu.assertEquals(candidate(1, 3), 8)
    lu.assertEquals(candidate(5, 3), 40)
    lu.assertEquals(candidate(29, 3), 232)
end

os.exit(lu.LuaUnit.run())