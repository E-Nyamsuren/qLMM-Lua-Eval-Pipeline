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
print(largest_divisor(37)) -- Expected output: 1
print(largest_divisor(60)) -- Expected output: 30
print(largest_divisor(81)) -- Expected output: 27
print(largest_divisor(49)) -- Expected output: 7
print(largest_divisor(2)) -- Expected output: 1
print(largest_divisor(1)) -- Expected output: 1
print(largest_divisor(0)) -- Expected output: 1
print(largest_divisor(-15)) -- Expected output: 1
print(largest_divisor(-100)) -- Expected output: 50
print(largest_divisor(-37)) -- Expected output: 1
print(largest_divisor(-60)) -- Expected output: 30
print(largest_divisor(-81)) -- Expected output: 27
print(largest_divisor(-49)) -- Expected output: 7
print(largest_divisor(-2)) -- Expected output: 1
print(largest_divisor(-1)) -- Expected output: 1
print(largest_divisor(-0)) -- Expected output: 1
print(largest_divisor(-15.5)) -- Expected output: 1
print(largest_divisor(-100.5)) -- Expected output: 50
print(largest_divisor(-37.5)) -- Expected output: 1
print(largest_divisor(-60.5)) -- Expected output

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