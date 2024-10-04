-- Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
-- Example
-- >>> is_equal_to_sum_even(4)
-- false
-- >>> is_equal_to_sum_even(6)
-- false
-- >>> is_equal_to_sum_even(8)
-- true
local function is_equal_to_sum_even(n)
    if n % 2 == 0 then
        local sum = 0
        for i = 1, 4 do
            sum = sum + i * 2
        end
        if sum == n then
            return true
        end
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