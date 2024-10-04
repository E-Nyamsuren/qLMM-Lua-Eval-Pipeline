-- Write a function that returns true if the given number is the multiplication of 3 prime numbers
-- and false otherwise.
-- Knowing that (a) is less then 100. 
-- Example:
-- >>> is_multiply_prime(30)
-- true
-- 30 = 2 * 3 * 5
local function is_multiply_prime(a)
    local count = 0
    for i = 2, a do
        if a % i == 0 then
            count = count + 1
            if count > 3 then
                return false
            end
        end
    end
    return count == 3
end
print(is_multiply_prime(30)) -- true
print(is_multiply_prime(60)) -- true
print(is_multiply_prime(31)) -- false
print(is_multiply_prime(2)) -- false
print(is_multiply_prime(3)) -- false
print(is_multiply_prime(4)) -- false
print(is_multiply_prime(5)) -- false
print(is_multiply_prime(6)) -- false
print(is_multiply_prime(7)) -- false
print(is_multiply_prime(8)) -- false
print(is_multiply_prime(9)) -- false
print(is_multiply_prime(10)) -- false
print(is_multiply_prime(11)) -- false
print(is_multiply_prime(12)) -- false
print(is_multiply_prime(13)) -- false
print(is_multiply_prime(14)) -- false
print(is_multiply_prime(15)) -- false
print(is_multiply_prime(16)) -- false
print(is_multiply_prime(17)) -- false
print(is_multiply_prime(18)) -- false
print(is_multiply_prime(19)) -- false
print(is_multiply_prime(20)) -- false
print(is_multiply_prime(21)) -- false
print(is_multiply_prime(22)) -- false


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