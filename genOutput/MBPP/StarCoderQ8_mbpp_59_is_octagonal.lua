-- Write a function to find the nth octagonal number.
local function is_octagonal(n)
	local sqrt_n = math.sqrt(n)
	local sqrt_n_plus_1 = math.sqrt(n + 1)
	return sqrt_n == math.floor(sqrt_n) and sqrt_n_plus_1 == math.floor(sqrt_n_plus_1)
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_octagonal
    lu.assertEquals(candidate(5), 65)
    lu.assertEquals(candidate(10), 280)
    lu.assertEquals(candidate(15), 645)
end

os.exit(lu.LuaUnit.run())