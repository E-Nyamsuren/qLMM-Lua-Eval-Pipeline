-- Return the largest prime factor of n. Assume n > 1 and is not a prime.
-- >>> largest_prime_factor(13195)
-- 29
-- >>> largest_prime_factor(2048)
-- 2
local function largest_prime_factor(n)
    local max_prime = -1
    -- Divide n by 2 to remove all even factors
    while n % 2 == 0 do
        max_prime = 2
        n = n / 2
    end
    -- Now n must be odd, start loop from 3 and remove all factors
    for i = 3, math.sqrt(n) + 1, 2 do
        while n % i == 0 do
            max_prime = i
            n = n / i
        end
    end
    -- If n is a prime number greater than 2
    if n > 2 then
        max_prime = n
    end
    return max_prime
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