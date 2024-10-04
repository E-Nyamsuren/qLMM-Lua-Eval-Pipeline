-- Write a function to caluclate the area of a tetrahedron.
local function area_tetrahedron(side)
    return 4 * math.sqrt(3) * side
end

lu = require('luaunit')

function test_humaneval()
local candidate = area_tetrahedron
    lu.assertEquals(candidate(3), 15.588457268119894)
    lu.assertEquals(candidate(20), 692.8203230275509)
    lu.assertEquals(candidate(10), 173.20508075688772)
end

os.exit(lu.LuaUnit.run())