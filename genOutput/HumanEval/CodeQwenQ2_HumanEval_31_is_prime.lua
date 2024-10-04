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
    if n <= 1 then
        return false
    end
    if n <= 3 then
        return true
    end
    if n % 2 == 0 or n % 3 == 0 then
        return false
    end
    local i = 5
    while i * i <= n do
        if n % i == 0 or n % (i + 2) == 0 then
            return false
        end
        i = i + 6
    end
    return true
end
print(is_prime(6)) -- false
print(is_prime(101)) -- true
print(is_prime(11)) -- true
print(is_prime(13441)) -- true
print(is_prime(61)) -- true
print(is_prime(4)) -- false
print(is_prime(1)) -- false

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