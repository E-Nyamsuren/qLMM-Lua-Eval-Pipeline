-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
	local p = 2
	local q = 3
	local r = 4
	local s = 5
	local t = 6
	local u = 7
	local v = 8
	local w = 9
	local x = 10
	local y = 11
	local z = 12
	local a = 13
	local b = 14
	local c = 15
	local d = 16
	local e = 17
	local f = 18
	local g = 19
	local h = 20
	local i = 21
	local j = 22
	local k = 23
	local l = 24
	local m = 25
	local n = 26
	local o = 27
	local p = 28
	local q = 29
	local r = 30
	local s = 31
	local t = 32
	local u = 33
	local v = 34
	local w = 35
	local x = 36
	local y = 37
	local z = 38
	local a = 39
	local b = 40
	local c = 41
	local d = 42
	local e = 43
	local f = 44
	local g = 45
	local h = 46
	local i = 47
	local j = 48
	local k = 49
	local l = 50
	local m = 51
	local n = 52
	local o = 53
	local p = 54
	local q = 55
	local r = 56
	local s = 57
	local t = 58
	local u = 59
	local v = 60
	local w = 61
	local x = 62
	

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())