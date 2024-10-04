-- Write a luathon function to find the surface area of a square luaramid with a given base edge and height.
local function surface_Area(b, s)
    -- The surface area of a square luaramid is given by the formula: 4 * b * s
    return 4 * b * s
end

lu = require('luaunit')

function test_humaneval()
local candidate = surface_Area
    lu.assertEquals(candidate(3, 4), 33)
    lu.assertEquals(candidate(4, 5), 56)
    lu.assertEquals(candidate(1, 2), 5)
end

os.exit(lu.LuaUnit.run())