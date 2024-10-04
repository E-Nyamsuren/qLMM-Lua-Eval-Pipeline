-- Write a function to caluclate the area of a tetrahedron.
local function area_tetrahedron(side)
	local area = (1/3)*side*side*side
	return area
end

lu = require('luaunit')

function test_humaneval()
local candidate = area_tetrahedron
    lu.assertEquals(candidate(3), 15.588457268119894)
    lu.assertEquals(candidate(20), 692.8203230275509)
    lu.assertEquals(candidate(10), 173.20508075688772)
end

os.exit(lu.LuaUnit.run())