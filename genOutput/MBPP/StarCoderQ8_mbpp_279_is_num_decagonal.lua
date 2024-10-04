-- Write a function to find the nth decagonal number.
local function is_num_decagonal(n)
	local sqrt_n = math.sqrt(n)
	local sqrt_n_floor = math.floor(sqrt_n)
	return sqrt_n == sqrt_n_floor and (sqrt_n_floor * (sqrt_n_floor + 1)) / 2 == n
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_num_decagonal
    lu.assertEquals(candidate(3), 27)
    lu.assertEquals(candidate(7), 175)
    lu.assertEquals(candidate(10), 370)
end

os.exit(lu.LuaUnit.run())