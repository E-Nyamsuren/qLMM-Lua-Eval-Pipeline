-- Write a function to find the surface area of a cube of a given size.
local function surfacearea_cube(l)
    return 6 * l * l
end
print(surfacearea_cube(5)) -- Output: 150
print(surfacearea_cube(10)) -- Output: 600
print(surfacearea_cube(15)) -- Output: 900
print(surfacearea_cube(20)) -- Output: 1200
print(surfacearea_cube(25)) -- Output: 1500

lu = require('luaunit')

function test_humaneval()
local candidate = surfacearea_cube
    lu.assertEquals(candidate(5), 150)
    lu.assertEquals(candidate(3), 54)
    lu.assertEquals(candidate(10), 600)
end

os.exit(lu.LuaUnit.run())