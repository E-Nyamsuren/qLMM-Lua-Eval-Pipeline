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
  local index1, index2 = 0, 0
  for i, planet in ipairs(planets) do
    if planet == planet1 then
      index1 = i
    elseif planet == planet2 then
      index2 = i
    end
  end
  if index1 == 0 or index2 == 0 then
    return {}
  end
  if index1 > index2 then
    index1, index2 = index2, index1
  end
  for i = index1 + 1, index2 - 1 do
    table.insert(result, planets[i])
  end
  return result
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