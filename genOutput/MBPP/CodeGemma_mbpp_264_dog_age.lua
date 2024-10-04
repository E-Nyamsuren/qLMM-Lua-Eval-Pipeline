-- Write a function to calculate a dog's age in dog's years.
local function dog_age(h_age)
  local d_age = 7 * h_age
  return d_age
end

lu = require('luaunit')

function test_humaneval()
local candidate = dog_age
    lu.assertEquals(candidate(12), 61)
    lu.assertEquals(candidate(15), 73)
    lu.assertEquals(candidate(24), 109)
end

os.exit(lu.LuaUnit.run())