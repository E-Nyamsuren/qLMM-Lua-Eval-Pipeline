-- Write a function to find the nth nonagonal number.
local function is_nonagonal(n)
	local s = 0
	for i = 1, n do
		s = s + i
	end
	return n * (n - 1) * (n - 2) * (n - 3) * (n - 4) * (n - 5) * (n - 6) * (n - 7) * (n - 8) * (n - 9) * (n - 10) * (n - 11) * (n - 12) * (n - 13) * (n - 14) * (n - 15) * (n - 16) * (n - 17) * (n - 18) * (n - 19) * (n - 20) * (n - 21) * (n - 22) * (n - 23) * (n - 24) * (n - 25) * (n - 26) * (n - 27) * (n - 28) * (n - 29) * (n - 30) * (n - 31) * (n - 32) * (n - 33) * (n - 34) * (n - 35) * (n - 36) * (n - 37) * (n - 38) * (n - 39) * (n - 40) * (n - 41) * (n - 42) * (n - 43) * (n - 44) * (n - 45) * (n - 46) * (n - 47) * (n - 48) * (n - 49) * (n - 50) * (n - 51) * (n - 52) * (n - 53) * (n - 54) * (n - 55) * (n - 56) * (n - 57) * (n - 58) * (

lu = require('luaunit')

function test_humaneval()
local candidate = is_nonagonal
    lu.assertEquals(candidate(10), 325)
    lu.assertEquals(candidate(15), 750)
    lu.assertEquals(candidate(18), 1089)
end

os.exit(lu.LuaUnit.run())