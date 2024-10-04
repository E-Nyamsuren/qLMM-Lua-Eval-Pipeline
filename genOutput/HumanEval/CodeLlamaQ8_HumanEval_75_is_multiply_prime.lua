-- Write a function that returns true if the given number is the multiplication of 3 prime numbers
-- and false otherwise.
-- Knowing that (a) is less then 100. 
-- Example:
-- >>> is_multiply_prime(30)
-- true
-- 30 = 2 * 3 * 5
local function is_multiply_prime(a)
    local function is_prime(n)
        if n <= 1 then
            return false
        end
        for i = 2, n do
            if n % i == 0 then
                return false
            end
        end
        return true
    end
    local function is_multiply_prime_helper(a, prime_list)
        if a == 1 then
            return true
        end
        for i = 1, #prime_list do
            if a % prime_list[i] == 0 then
                return is_multiply_prime_helper(a / prime_list[i], prime_list)
            end
        end
        return false
    end
    local prime_list = {}
    for i = 2, 100 do
        if is_prime(i) then
            table.insert(prime_list, i)
        end
    end
    return is_multiply_prime_helper(a, prime_list)
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