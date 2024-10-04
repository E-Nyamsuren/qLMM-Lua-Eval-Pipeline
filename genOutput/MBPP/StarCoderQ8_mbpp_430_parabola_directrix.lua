-- Write a function to find the directrix of a parabola.
local function parabola_directrix(a, b, c)
	local d = b^2 - 4*a*c
	local x1 = (-b + math.sqrt(d)) / (2*a)
	local x2 = (-b - math.sqrt(d)) / (2*a)
	local y1 = a*x1^2 + b*x1 + c
	local y2 = a*x2^2 + b*x2 + c
	return x1, y1, x2, y2
end

lu = require('luaunit')

function test_humaneval()
local candidate = parabola_directrix
    lu.assertEquals(candidate(5, 3, 2), -198)
    lu.assertEquals(candidate(9, 8, 4), -2336)
    lu.assertEquals(candidate(2, 4, 6), -130)
end

os.exit(lu.LuaUnit.run())