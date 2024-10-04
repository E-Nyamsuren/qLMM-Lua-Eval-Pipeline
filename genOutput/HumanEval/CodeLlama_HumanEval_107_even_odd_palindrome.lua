-- Given a positive integer n, return a table that has the number of even and odd
-- integer palindromes that fall within the range(1, n), inclusive.
-- Example 1:
-- >>> even_odd_palindrome(3)
-- {1, 2}
--     Explanation:
--     Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
-- Example 2:
-- >>> even_odd_palindrome(12)
-- {4, 6}
--     Explanation:
--     Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
-- Note:
--     1. 1 <= n <= 10^3
--     2. returned table has the number of even and odd integer palindromes respectively.
local function even_odd_palindrome(n)
    local even = 0
    local odd = 0
    for i = 1, n do
        if i % 2 == 0 then
            even = even + 1
        else
            odd = odd + 1
        end
    end
    return {even, odd}
end

lu = require('luaunit')

function test_humaneval()
local candidate = even_odd_palindrome
    lu.assertEquals(candidate(123), {8, 13})
    lu.assertEquals(candidate(12), {4, 6})
    lu.assertEquals(candidate(3), {1, 2})
    lu.assertEquals(candidate(63), {6, 8})
    lu.assertEquals(candidate(25), {5, 6})
    lu.assertEquals(candidate(19), {4, 6})
    lu.assertEquals(candidate(9), {4, 5})
    lu.assertEquals(candidate(1), {0, 1})
end

os.exit(lu.LuaUnit.run())