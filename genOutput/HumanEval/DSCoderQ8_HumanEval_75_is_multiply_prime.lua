-- Write a function that returns true if the given number is the multiplication of 3 prime numbers
-- and false otherwise.
-- Knowing that (a) is less then 100. 
-- Example:
-- >>> is_multiply_prime(30)
-- true
-- 30 = 2 * 3 * 5
local function is_multiply_prime(a)
    local factors = {}
    local prime_counter = 0
    for i = 2, a - 1 do
        while a % i == 0 do
            factors[i] = (factors[i] or 0) + 1
            a = a / i
            prime_counter = prime_counter + 1
        end
    end
    return prime_counter == 3 and a == 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_multiply_prime
    lu.assertEquals(candidate(5), false)
    lu.assertEquals(candidate(30), true)
    lu.assertEquals(candidate(8), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(125), true)
    lu.assertEquals(candidate(105), true)
    lu.assertEquals(candidate(126), false)
    lu.assertEquals(candidate(729), false)
    lu.assertEquals(candidate(891), false)
    lu.assertEquals(candidate(1001), true)
end

os.exit(lu.LuaUnit.run())