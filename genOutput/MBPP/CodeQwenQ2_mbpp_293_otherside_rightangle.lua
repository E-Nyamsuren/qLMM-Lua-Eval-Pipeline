-- Write a function to find the third side of a right angled triangle.
local function otherside_rightangle(w, h)
    -- The formula to find the third side of a right angled triangle is:
    -- c = sqrt(w^2 + h^2)
    -- where c is the length of the hypotenuse and w and h are the lengths of the other two sides.
    local c = math.sqrt(w^2 + h^2)
    return c
end

lu = require('luaunit')

function test_humaneval()
local candidate = otherside_rightangle
    lu.assertEquals(candidate(7, 8), 10.63014581273465)
    lu.assertEquals(candidate(3, 4), 5)
    lu.assertEquals(candidate(7, 15), 16.55294535724685)
end

os.exit(lu.LuaUnit.run())