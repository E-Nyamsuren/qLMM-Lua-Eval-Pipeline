-- Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
local function wind_chill(v, t)
	local wind_chill = 33 - (v * 0.6) - (t * 0.7)
	return math.floor(wind_chill)
end


lu = require('luaunit')

function test_humaneval()
local candidate = wind_chill
    lu.assertEquals(candidate(120, 35), 40)
    lu.assertEquals(candidate(40, 20), 19)
    lu.assertEquals(candidate(10, 8), 6)
end

os.exit(lu.LuaUnit.run())