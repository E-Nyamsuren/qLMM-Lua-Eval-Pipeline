-- Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
local function wind_chill(v, t)
	local v = v or 0
	local t = t or 0
	local wci = 13.12 + 0.6215 * t - 11.37 * math.pow(v, 0.16) + 0.3965 * t * math.pow(v, 0.16)
	return math.floor(wci + 0.5)
end

lu = require('luaunit')

function test_humaneval()
local candidate = wind_chill
    lu.assertEquals(candidate(120, 35), 40)
    lu.assertEquals(candidate(40, 20), 19)
    lu.assertEquals(candidate(10, 8), 6)
end

os.exit(lu.LuaUnit.run())