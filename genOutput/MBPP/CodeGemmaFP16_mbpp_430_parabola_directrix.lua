-- Write a function to find the directrix of a parabola.
local function parabola_directrix(a, b, c)
    local discriminant = b^2 - 4*a*c
    if discriminant < 0 then
        return nil
    elseif discriminant == 0 then
        return -b/(2*a)
    else
        local root1 = (-b + math.sqrt(discriminant)) / (2*a)
        local root2 = (-b - math.sqrt(discriminant)) / (2*a)
        return root1, root2
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = parabola_directrix
    lu.assertEquals(candidate(5, 3, 2), -198)
    lu.assertEquals(candidate(9, 8, 4), -2336)
    lu.assertEquals(candidate(2, 4, 6), -130)
end

os.exit(lu.LuaUnit.run())