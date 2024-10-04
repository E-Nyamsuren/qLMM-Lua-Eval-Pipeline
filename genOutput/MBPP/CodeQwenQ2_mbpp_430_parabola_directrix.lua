-- Write a function to find the directrix of a parabola.
local function parabola_directrix(a, b, c)
    -- The directrix of a parabola is given by the formula:
    -- y = c - (1 + b^2) / (4a)
    -- where a, b, and c are the coefficients of the parabola's equation.
    -- The directrix is the line y = c - (1 + b^2) / (4a).
    return c - (1 + b^2) / (4 * a)
end

lu = require('luaunit')

function test_humaneval()
local candidate = parabola_directrix
    lu.assertEquals(candidate(5, 3, 2), -198)
    lu.assertEquals(candidate(9, 8, 4), -2336)
    lu.assertEquals(candidate(2, 4, 6), -130)
end

os.exit(lu.LuaUnit.run())