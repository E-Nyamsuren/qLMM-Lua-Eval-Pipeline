-- Write a luathon function to find the smallest power of 2 greater than or equal to n.
local function next_power_of_2(n)
  local power = 1
  while power < n do
    power = power * 2
  end
  return power
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_power_of_2
    lu.assertEquals(candidate(0), 1)
    lu.assertEquals(candidate(5), 8)
    lu.assertEquals(candidate(17), 32)
end

os.exit(lu.LuaUnit.run())