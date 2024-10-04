-- Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
-- Example
-- >>> is_equal_to_sum_even(4)
-- false
-- >>> is_equal_to_sum_even(6)
-- false
-- >>> is_equal_to_sum_even(8)
-- true
local function is_equal_to_sum_even(n)
    if n < 8 then
        return false
    elseif n == 8 then
        return true
    else
        return is_equal_to_sum_even(n - 2)
    end
end
print(is_equal_to_sum_even(8)) -- Expected output: true
print(is_equal_to_sum_even(10)) -- Expected output: true
print(is_equal_to_sum_even(14)) -- Expected output: true
print(is_equal_to_sum_even(7)) -- Expected output: false
print(is_equal_to_sum_even(9)) -- Expected output: false
print(is_equal_to_sum_even(11)) -- Expected output: false
print(is_equal_to_sum_even(12)) -- Expected output: true
print(is_equal_to_sum_even(15)) -- Expected output: true
print(is_equal_to_sum_even(16)) -- Expected output: true
print(is_equal_to_sum_even(17)) -- Expected output: false
print(is_equal_to_sum_even(18)) -- Expected output: false
print(is_equal_to_sum_even(19)) -- Expected output: false
print(is_equal_to_sum_even(20)) -- Expected output: true
print(is_equal_to_sum_even(21)) -- Expected output: false
print(is_equal_to_sum_even(22)) -- Expected output: false
print(is_equal_to_sum_even(23)) -- Expected output: false
print(is_equal_to_sum_even(24)) -- Expected output: true
print(is_equal_to_sum_

lu = require('luaunit')

function test_humaneval()
local candidate = is_equal_to_sum_even
    lu.assertEquals(candidate(4), false)
    lu.assertEquals(candidate(6), false)
    lu.assertEquals(candidate(8), true)
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(11), false)
    lu.assertEquals(candidate(12), true)
    lu.assertEquals(candidate(13), false)
    lu.assertEquals(candidate(16), true)
end

os.exit(lu.LuaUnit.run())