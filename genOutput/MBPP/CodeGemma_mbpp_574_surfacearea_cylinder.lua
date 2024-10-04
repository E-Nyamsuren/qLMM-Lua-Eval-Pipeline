-- Write a function to find the surface area of a cylinder.
local function surfacearea_cylinder(r, h)
  local area = 2 * math.pi * r * r + 2 * math.pi * r * h
  return area
end

lu = require('luaunit')

function test_humaneval()
local candidate = surfacearea_cylinder
    lu.assertEquals(candidate(10, 5), 942.45)
    lu.assertEquals(candidate(4, 5), 226.18800000000002)
    lu.assertEquals(candidate(4, 10), 351.848)
end

os.exit(lu.LuaUnit.run())