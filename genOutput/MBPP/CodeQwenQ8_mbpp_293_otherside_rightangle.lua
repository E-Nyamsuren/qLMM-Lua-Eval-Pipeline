-- Write a function to find the third side of a right angled triangle.
local function otherside_rightangle(w, h)
    -- The Pythagorean theorem states that in a right-angled triangle, the square of the length of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the lengths of the other two sides.
    -- So, we can use this theorem to find the length of the third side.
    return math.sqrt(w^2 + h^2)
end

lu = require('luaunit')

function test_humaneval()
local candidate = otherside_rightangle
    lu.assertEquals(candidate(7, 8), 10.63014581273465)
    lu.assertEquals(candidate(3, 4), 5)
    lu.assertEquals(candidate(7, 15), 16.55294535724685)
end

os.exit(lu.LuaUnit.run())