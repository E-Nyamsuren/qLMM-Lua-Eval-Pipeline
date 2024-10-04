-- Write a function to find the lateral surface area of a cone given radius r and the height h.
local function lateralsurface_cone(r, h)
    -- The formula for the lateral surface area of a cone is 2 * pi * r * h
    local lateral_surface = 2 * math.pi * r * h
    return lateral_surface
end

lu = require('luaunit')

function test_humaneval()
local candidate = lateralsurface_cone
    lu.assertEquals(candidate(5, 12), 204.20352248333654)
    lu.assertEquals(candidate(10, 15), 566.3586699569488)
    lu.assertEquals(candidate(19, 17), 1521.8090132193388)
end

os.exit(lu.LuaUnit.run())