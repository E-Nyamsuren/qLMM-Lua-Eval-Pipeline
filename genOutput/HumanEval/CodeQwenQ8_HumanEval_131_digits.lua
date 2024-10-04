-- Given a positive integer n, return the product of the odd digits.
-- Return 0 if all digits are even.
-- For example:
-- >>> digits(1)
-- 1
-- >>> digits(4)
-- 0
-- >>> digits(235)
-- 15
local function digits(n)
    local product = 1
    local has_odd = false
    while n > 0 do
        local digit = n % 10
        if digit % 2 == 1 then
            product = product * digit
            has_odd = true
        end
        n = n // 10
    end
    return has_odd and product or 0
end
print(digits(1)) -- 1
print(digits(4)) -- 0
print(digits(235)) -- 15
print(digits(2468)) -- 0
print(digits(13579)) -- 945
print(digits(123456789)) -- 945
print(digits(987654321)) -- 945
print(digits(111111111)) -- 1
print(digits(222222222)) -- 0
print(digits(333333333)) -- 27
print(digits(444444444)) -- 0
print(digits(555555555)) -- 125
print(digits(666666666)) -- 0
print(digits(777777777)) -- 343
print(digits(888888888)) -- 0
print(digits(999999999)) -- 729
print(digits(1234567890)) -- 945
print(digits(9876543210)) -- 945
print(digits(1111111111)) -- 1
print(digits(2222222222)) -- 0
print(digits(3333333333)) -- 27
print(digits(4444444444)) -- 0
print(digits(5555555555)) -- 125
print(digits(6666666666)) -- 0
print(digits(7777777777)) -- 343
print(digits(8888888888)) -- 0
print(digits(9999999999)) -- 729
print(

lu = require('luaunit')

function test_humaneval()
local candidate = digits
    lu.assertEquals(candidate(5), 5)
    lu.assertEquals(candidate(54), 5)
    lu.assertEquals(candidate(120), 1)
    lu.assertEquals(candidate(5014), 5)
    lu.assertEquals(candidate(98765), 315)
    lu.assertEquals(candidate(5576543), 2625)
    lu.assertEquals(candidate(2468), 0)
end

os.exit(lu.LuaUnit.run())