-- Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
local function wind_chill(v, t)
    local w = 13.12 + 0.6215 * t - 11.37 * v ** 0.16 + 0.3965 * t * v ** 0.16
    return math.floor(w)
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = wind_chill
    lu.assertEquals(candidate(120, 35), 40)
    lu.assertEquals(candidate(40, 20), 19)
    lu.assertEquals(candidate(10, 8), 6)
end

os.exit(lu.LuaUnit.run())