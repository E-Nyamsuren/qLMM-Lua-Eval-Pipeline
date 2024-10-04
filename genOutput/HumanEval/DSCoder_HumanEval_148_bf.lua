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
    local found_planet1, found_planet2 = false, false
    for i = 1, #planets do
        if planets[i] == planet1 then
            found_planet1 = true
        elseif planets[i] == planet2 then
            found_planet2 = true
        end
        if found_planet1 and planets[i] ~= planet1 and planets[i] ~= planet2 then
            table.insert(result, planets[i])
        end
    end
    if not found_planet1 or not found_planet2 then
        return {}
    else
        return result
    end
end

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