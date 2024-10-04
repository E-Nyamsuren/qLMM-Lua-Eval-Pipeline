-- There are eight planets in our solar system: the closerst to the Sun 
-- is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
-- Uranus, Neptune.
-- Write a function that takes two planet names as strings planet1 and planet2. 
-- The function should return a table containing all planets whose orbits are 
-- located between the orbit of planet1 and the orbit of planet2, sorted by 
-- the proximity to the sun. 
-- The function should return an empty table if planet1 or planet2
-- are not correct planet names. 
-- Examples
-- >>> bf('Jupiter', 'Neptune')
-- {'Saturn', 'Uranus'}
-- >>> bf('Earth', 'Mercury')
-- 'Venus'
-- >>> bf('Mercury', 'Uranus')
-- {'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn'}
local function bf(planet1, planet2)
    local planets = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'}
    local result = {}
    local i = 1
    local j = 1
    local k = 1
    local l = 1
    local m = 1
    local n = 1
    local o = 1
    local p = 1
    local q = 1
    local r = 1
    local s = 1
    local t = 1
    local u = 1
    local v = 1
    local w = 1
    local x = 1
    local y = 1
    local z = 1
    local a = 1
    local b = 1
    local c = 1
    local d = 1
    local e = 1
    local f = 1
    local g = 1
    local h = 1
    local i = 1
    local j = 1
    local k = 1
    local l = 1
    local m

lu = require('luaunit')

function test_humaneval()
local candidate = bf
    lu.assertEquals(candidate('Jupiter', 'Neptune'), {'Saturn', 'Uranus'})
    lu.assertEquals(candidate('Earth', 'Mercury'), {'Venus'})
    lu.assertEquals(candidate('Mercury', 'Uranus'), {'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn'})
    lu.assertEquals(candidate('Neptune', 'Venus'), {'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus'})
    lu.assertEquals(candidate('Earth', 'Earth'), {})
    lu.assertEquals(candidate('Mars', 'Earth'), {})
    lu.assertEquals(candidate('Jupiter', 'Makemake'), {})
end

os.exit(lu.LuaUnit.run())