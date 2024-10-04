-- Write a function that returns true if the given number is the multiplication of 3 prime numbers
-- and false otherwise.
-- Knowing that (a) is less then 100. 
-- Example:
-- >>> is_multiply_prime(30)
-- true
-- 30 = 2 * 3 * 5
local function is_multiply_prime(a)
    local function is_prime(n)
        if n < 2 then return false end
        for i = 2, math.sqrt(n) do
            if n % i == 0 then return false end
        end
        return true
    end
    local count = 0
    for i = 2, a do
        if a % i == 0 and is_prime(i) then
            count = count + 1
        end
    end
    return count == 3
end
print(is_multiply_prime(30)) -- true
print(is_multiply_prime(60)) -- true
print(is_multiply_prime(31)) -- false
print(is_multiply_prime(2*3*5)) -- true
print(is_multiply_prime(2*3*7)) -- false
print(is_multiply_prime(2*3*11)) -- false
print(is_multiply_prime(2*3*13)) -- false
print(is_multiply_prime(2*3*17)) -- false
print(is_multiply_prime(2*3*19)) -- false
print(is_multiply_prime(2*3*23)) -- false
print(is_multiply_prime(2*3*29)) -- false
print(is_multiply_prime(2*3*31)) -- false
print(is_multiply_prime(2*3*37)) -- false
print(is_multiply_prime(2*3*41)) -- false
print(is_multiply_prime(2*3*43)) -- false
print(is_multiply_prime(2*3*47)) -- false
print(is_multiply_prime(2*3*53)) -- false

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