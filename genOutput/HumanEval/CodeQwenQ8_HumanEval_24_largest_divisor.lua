-- For a given number n, find the largest number that divides n evenly, smaller than n
-- >>> largest_divisor(15)
-- 5
local function largest_divisor(n)
    for i = n - 1, 1, -1 do
        if n % i == 0 then
            return i
        end
    end
    return 1
end
print(largest_divisor(15)) -- Expected output: 5
print(largest_divisor(17)) -- Expected output: 1 (since 17 is a prime number)
print(largest_divisor(60)) -- Expected output: 30
print(largest_divisor(100)) -- Expected output: 50
print(largest_divisor(1)) -- Expected output: 1 (since 1 has no divisors other than itself)
print(largest_divisor(2)) -- Expected output: 1 (since 2 has no divisors other than itself)
print(largest_divisor(3)) -- Expected output: 1 (since 3 has no divisors other than itself)
print(largest_divisor(4)) -- Expected output: 2 (since 4 has no divisors other than itself)
print(largest_divisor(5)) -- Expected output: 1 (since 5 has no divisors other than itself)
print(largest_divisor(6)) -- Expected output: 3 (since 6 has no divisors other than itself)
print(largest_divisor(7)) -- Expected output: 1 (since 7 has no divisors other than itself)
print(largest_divisor(8)) -- Expected output: 4 (since 8 has no divisors other than itself)
print(largest_divisor(9)) -- Expected output: 3 (since 9 has no divisors other than itself)
print(largest_divisor(10)) -- Expected output: 5 (since 10 has no divisors other than itself)
print(largest_divisor(11)) -- Expected output: 1 (since 11 has no divisors other

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