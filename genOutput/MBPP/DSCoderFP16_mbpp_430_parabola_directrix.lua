-- Write a function to find the directrix of a parabola.
local function parabola_directrix(a, b, c)
-- a, b, c are coefficients of the quadratic equation ax^2 + bx + c = 0

lu = require('luaunit')

function test_humaneval()
local candidate = parabola_directrix
    lu.assertEquals(candidate(5, 3, 2), -198)
    lu.assertEquals(candidate(9, 8, 4), -2336)
    lu.assertEquals(candidate(2, 4, 6), -130)
end

os.exit(lu.LuaUnit.run())