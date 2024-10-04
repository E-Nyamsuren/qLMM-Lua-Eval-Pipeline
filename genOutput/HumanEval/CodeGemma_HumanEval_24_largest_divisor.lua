-- For a given number n, find the largest number that divides n evenly, smaller than n
-- >>> largest_divisor(15)
-- 5
local function largest_divisor(n)
  local divisor = n - 1
  while divisor > 0 do
    if n % divisor == 0 then
      return divisor
    end
    divisor = divisor - 1
  end
  return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = largest_divisor
    lu.assertEquals(candidate(3), 1)
    lu.assertEquals(candidate(7), 1)
    lu.assertEquals(candidate(10), 5)
    lu.assertEquals(candidate(100), 50)
    lu.assertEquals(candidate(49), 7)
end

os.exit(lu.LuaUnit.run())