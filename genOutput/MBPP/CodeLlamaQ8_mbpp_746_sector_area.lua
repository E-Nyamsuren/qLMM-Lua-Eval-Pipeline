-- Write a function to find area of a sector. The function takes the radius and angle as inputs. Function should return nil if the angle is larger than 360 degrees.
local function sector_area(r, a)
    if a > 360 then
        return nil
    end
    return math.pi * r * r * a / 360
end

lu = require('luaunit')

function test_humaneval()
local candidate = sector_area
    lu.assertEquals(candidate(4, 45), 6.283185307179586)
    lu.assertEquals(candidate(9, 45), 31.808625617596654)
    lu.assertEquals(candidate(9, 361), None)
end

os.exit(lu.LuaUnit.run())