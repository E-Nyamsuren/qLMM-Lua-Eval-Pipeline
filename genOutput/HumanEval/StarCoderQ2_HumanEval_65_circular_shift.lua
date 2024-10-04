-- Circular shift the digits of the integer x, shift the digits right by shift
-- and return the result as a string.
-- If shift > number of digits, return digits reversed.
-- >>> circular_shift(12, 1)
-- '21'
-- >>> circular_shift(12, 2)
-- '12'
local function circular_shift(x, shift)
	local s = tostring(x)
	local n = string.len(s)
	local m = math.floor((shift % n) + 1)
	local a = string.sub(s, m)
	local b = string.sub(s, 1, m - 1)
	local c = string.sub(s, n - m + 1)
	local d = string.sub(s, n - m + 2)
	local e = string.sub(s, n - m + 3)
	local f = string.sub(s, n - m + 4)
	local g = string.sub(s, n - m + 5)
	local h = string.sub(s, n - m + 6)
	local i = string.sub(s, n - m + 7)
	local j = string.sub(s, n - m + 8)
	local k = string.sub(s, n - m + 9)
	local l = string.sub(s, n - m + 10)
	local m = string.sub(s, n - m + 11)
	local n = string.sub(s, n - m + 12)
	local o = string.sub(s, n - m + 13)
	local p = string.sub(s, n - m + 14)
	local q = string.sub(s, n - m + 15)
	local r = string.sub(s, n - m + 16)
	local s = string.sub(s, n - m + 17)
	local t = string.sub(s, n - m + 18)
	local u = string.sub(s, n - m + 

lu = require('luaunit')

function test_humaneval()
local candidate = circular_shift
    lu.assertEquals(candidate(100, 2), '001')
    lu.assertEquals(candidate(12, 2), '12')
    lu.assertEquals(candidate(97, 8), '79')
    lu.assertEquals(candidate(12, 1), '21')
    lu.assertEquals(candidate(11, 101), '11')
end

os.exit(lu.LuaUnit.run())