-- Write a luathon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
local function triangle_area(r)
    return math.sqrt(2 * r^2 * (1 - r^2))
end

lu = require('luaunit')

function test_humaneval()
local candidate = triangle_area
    lu.assertEquals(candidate(-1), None)
    lu.assertEquals(candidate(0), 0)
    lu.assertEquals(candidate(2), 4)
end

os.exit(lu.LuaUnit.run())