-- Return true if a given number is prime, and false otherwise.
-- >>> is_prime(6)
-- false
-- >>> is_prime(101)
-- true
-- >>> is_prime(11)
-- true
-- >>> is_prime(13441)
-- true
-- >>> is_prime(61)
-- true
-- >>> is_prime(4)
-- false
-- >>> is_prime(1)
-- false
local function is_prime(n)
    if n < 2 then
        return false
    end
    for i = 2, math.floor(math.sqrt(n)) do
        if n % i == 0 then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_prime
    lu.assertEquals(candidate(6), false)
    lu.assertEquals(candidate(101), true)
    lu.assertEquals(candidate(11), true)
    lu.assertEquals(candidate(13441), true)
    lu.assertEquals(candidate(61), true)
    lu.assertEquals(candidate(4), false)
    lu.assertEquals(candidate(1), false)
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(11), true)
    lu.assertEquals(candidate(17), true)
    lu.assertEquals(candidate(85), false)
    lu.assertEquals(candidate(77), false)
    lu.assertEquals(candidate(255379), false)
end

os.exit(lu.LuaUnit.run())