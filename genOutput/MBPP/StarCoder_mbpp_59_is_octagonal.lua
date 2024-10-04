-- Write a function to find the nth octagonal number.
local function is_octagonal(n)
	local sqrt_n = math.sqrt(n)
	local sqrt_n_int = math.floor(sqrt_n)
	return sqrt_n == sqrt_n_int and (sqrt_n_int * (sqrt_n_int + 1)) / 2 == n
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_octagonal
    lu.assertEquals(candidate(5), 65)
    lu.assertEquals(candidate(10), 280)
    lu.assertEquals(candidate(15), 645)
end

os.exit(lu.LuaUnit.run())