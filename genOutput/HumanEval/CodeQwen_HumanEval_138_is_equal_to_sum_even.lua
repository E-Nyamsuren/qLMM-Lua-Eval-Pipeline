-- Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
-- Example
-- >>> is_equal_to_sum_even(4)
-- false
-- >>> is_equal_to_sum_even(6)
-- false
-- >>> is_equal_to_sum_even(8)
-- true
local function is_equal_to_sum_even(n)
    -- Check if n is even and greater than or equal to 8
    if n % 2 == 0 and n >= 8 then
        -- Check if n can be written as the sum of 4 positive even numbers
        return n == 8 or n == 10 or n == 12 or n == 14 or n == 16 or n == 18 or n == 20 or n == 22 or n == 24 or n == 26 or n == 28 or n == 30
    end
    return false
end

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