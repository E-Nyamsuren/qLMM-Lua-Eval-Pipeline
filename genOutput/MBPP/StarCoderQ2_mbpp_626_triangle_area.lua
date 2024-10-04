-- Write a luathon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
local function triangle_area(r)
	local pi = 3.141592653589793238462643383279502884197169399375105820974944592307846156423074264040841873371339841897841854229674367169368362699973189833467126481857487375923195516963968754413453447203035348555463716716586456100086640625
	local a = r * r * pi / 2
	local b = r * pi / 2
	local c = r * pi
	local d = r * r * pi / 4
	local e = r * pi / 4
	local f = r * pi / 2
	local g = r * pi / 4
	local h = r * pi / 4
	local i = r * pi / 4
	local j = r * pi / 4
	local k = r * pi / 4
	local l = r * pi / 4
	local m = r * pi / 4
	local n = r * pi / 4
	local o = r * pi / 4
	local p = r * pi / 4
	local q = r * pi / 4
	local r = r * pi / 4
	local s = r * pi / 4
	local t = r * pi / 4
	local u = r * pi / 4
	local v = r * pi / 4


lu = require('luaunit')

function test_humaneval()
local candidate = triangle_area
    lu.assertEquals(candidate(-1), None)
    lu.assertEquals(candidate(0), 0)
    lu.assertEquals(candidate(2), 4)
end

os.exit(lu.LuaUnit.run())