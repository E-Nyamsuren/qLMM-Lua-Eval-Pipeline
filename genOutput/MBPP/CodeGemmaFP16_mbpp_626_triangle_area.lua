-- Write a luathon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
local function triangle_area(r)
    local a = math.sqrt(r)
    local b = math.sqrt(r - a)
    local c = math.sqrt(r - a - b)
    return (a * b * c) / 4
end

lu = require('luaunit')

function test_humaneval()
local candidate = triangle_area
    lu.assertEquals(candidate(-1), None)
    lu.assertEquals(candidate(0), 0)
    lu.assertEquals(candidate(2), 4)
end

os.exit(lu.LuaUnit.run())