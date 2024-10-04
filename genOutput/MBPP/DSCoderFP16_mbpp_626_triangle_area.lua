-- Write a luathon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
local function triangle_area(r)
    -- Calculate the area of the largest triangle that can be inscribed in a semicircle
    -- The formula for the area of a triangle inscribed in a semicircle is (sqrt(3)/4) * r^2
    -- The formula for the area of a semicircle is pi * r^2
    -- The largest triangle that can be inscribed in a semicircle is the one with the largest area
    -- The area of the largest triangle is the maximum of the three areas
    local triangle_area_semicircle = math.pi * r^2
    local triangle_area_largest = math.sqrt(3)/4 * r^2
    return math.max(triangle_area_semicircle, triangle_area_largest)
end

lu = require('luaunit')

function test_humaneval()
local candidate = triangle_area
    lu.assertEquals(candidate(-1), None)
    lu.assertEquals(candidate(0), 0)
    lu.assertEquals(candidate(2), 4)
end

os.exit(lu.LuaUnit.run())