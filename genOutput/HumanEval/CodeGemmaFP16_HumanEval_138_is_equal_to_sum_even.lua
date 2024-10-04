-- Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
-- Example
-- >>> is_equal_to_sum_even(4)
-- false
-- >>> is_equal_to_sum_even(6)
-- false
-- >>> is_equal_to_sum_even(8)
-- true
local function is_equal_to_sum_even(n)
    local a, b, c, d = 2, 4, 6, 8
    while a + b + c + d <= n do
        if a + b + c + d == n then
            return true
        end
        a = a + 2
        b = b + 4
        c = c + 6
        d = d + 8
    end
    return false
end
<|file_separator|>

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