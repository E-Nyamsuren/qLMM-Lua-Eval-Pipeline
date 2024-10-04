-- Return the largest prime factor of n. Assume n > 1 and is not a prime.
-- >>> largest_prime_factor(13195)
-- 29
-- >>> largest_prime_factor(2048)
-- 2
local function largest_prime_factor(n)
    local factor = 2
    while factor * factor <= n do
        while n % factor == 0 and n > factor do
            n = n / factor
        end
        factor = factor + 1
    end
    return n
end
print(largest_prime_factor(13195)) -- Should print 29
print(largest_prime_factor(2048)) -- Should print 2
```
```lua

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