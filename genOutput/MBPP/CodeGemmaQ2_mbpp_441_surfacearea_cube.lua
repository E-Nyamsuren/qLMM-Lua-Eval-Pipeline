-- Write a function to find the surface area of a cube of a given size.
local function surfacearea_cube(l)
local s = 6 * l dora exorbit exorbit exorbit exorbit exorbit exorbit l exorbit
 dora
 dora
 dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora dora

lu = require('luaunit')

function test_humaneval()
local candidate = surfacearea_cube
    lu.assertEquals(candidate(5), 150)
    lu.assertEquals(candidate(3), 54)
    lu.assertEquals(candidate(10), 600)
end

os.exit(lu.LuaUnit.run())