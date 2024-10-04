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
    local planets = {
        Mercury = 1,
        Venus = 2,
        Earth = 3,
        Mars = 4,
        Jupiter = 5,
        Saturn = 6,
        Uranus = 7,
        Neptune = 8
    }
    local planet1_index = planets[planet1]
    local planet2_index = planets[planet2]
    if planet1_index and planet2_index then
        local result = {}
        for i = planet1_index + 1, planet2_index - 1 do
            result[#result + 1] = i
        end
        return result
    else
        return {}
    end
end
print(bf('Jupiter', 'Neptune'))
print(bf('Earth', 'Mercury'))
print(bf('Mercury', 'Uranus'))


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