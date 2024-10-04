-- Return the largest prime factor of n. Assume n > 1 and is not a prime.
-- >>> largest_prime_factor(13195)
-- 29
-- >>> largest_prime_factor(2048)
-- 2
local function largest_prime_factor(n)
  local function is_prime(n)
    if n < 2 then return false end
    if n == 2 or n == 3 then return true end
    if n % 2 == 0 or n % 3 == 0 then return false end
    local i = 5
    local w = 2
    while i * i <= n do
      if n % i == 0 then return false end
      i = i + w
      w = 6 - w
    end
    return true
  end

lu = require('luaunit')

function test_humaneval()
local candidate = largest_prime_factor
    lu.assertEquals(candidate(15), 5)
    lu.assertEquals(candidate(27), 3)
    lu.assertEquals(candidate(63), 7)
    lu.assertEquals(candidate(330), 11)
    lu.assertEquals(candidate(13195), 29)
end

os.exit(lu.LuaUnit.run())