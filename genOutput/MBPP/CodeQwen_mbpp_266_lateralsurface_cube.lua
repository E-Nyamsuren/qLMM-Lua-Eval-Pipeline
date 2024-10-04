-- Write a function to find the lateral surface area of a cube given its side length.
local function lateralsurface_cube(l)
    -- Lateral Surface Area of a cube = 4 * side^2
    return 4 * l * l
end

lu = require('luaunit')

function test_humaneval()
local candidate = lateralsurface_cube
    lu.assertEquals(candidate(5), 100)
    lu.assertEquals(candidate(9), 324)
    lu.assertEquals(candidate(10), 400)
end

os.exit(lu.LuaUnit.run())