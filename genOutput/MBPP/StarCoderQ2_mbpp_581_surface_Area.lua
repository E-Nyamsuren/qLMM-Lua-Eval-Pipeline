-- Write a luathon function to find the surface area of a square luaramid with a given base edge and height.
local function surface_Area(b, s)
	local area = b * b * s
	return area
end

lu = require('luaunit')

function test_humaneval()
local candidate = surface_Area
    lu.assertEquals(candidate(3, 4), 33)
    lu.assertEquals(candidate(4, 5), 56)
    lu.assertEquals(candidate(1, 2), 5)
end

os.exit(lu.LuaUnit.run())