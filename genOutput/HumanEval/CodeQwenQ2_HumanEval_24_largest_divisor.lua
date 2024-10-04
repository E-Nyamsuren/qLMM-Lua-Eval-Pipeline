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
print(largest_divisor(100)) -- Expected output: 50
print(largest_divisor(49)) -- Expected output: 7
print(largest_divisor(17)) -- Expected output: 1
print(largest_divisor(1000)) -- Expected output: 500
print(largest_divisor(123456)) -- Expected output: 246913
print(largest_divisor(999999)) -- Expected output: 999
print(largest_divisor(123456789)) -- Expected output: 56789
print(largest_divisor(987654321)) -- Expected output: 56789
print(largest_divisor(1234567890)) -- Expected output: 567890
print(largest_divisor(9876543210)) -- Expected output: 567890
print(largest_divisor(12345678901)) -- Expected output: 5678901
print(largest_divisor(98765432101)) -- Expected output: 5678901
print(largest_divisor(123456789012)) -- Expected output: 56789012
print(largest_divisor(987654321012)) -- Expected output: 56789012
print(largest_divisor(1234567890123)) -- Expected output: 567890123
print(largest_divisor(9876543210123)) -- Expected output: 567890123
print(largest_divisor(12345678901234)) -- Expected output: 5678901234
print(largest_divisor(98765432101234)) -- Expected output: 

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